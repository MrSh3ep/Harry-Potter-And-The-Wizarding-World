#version 330

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
#moj_import <minecraft:fog.glsl>
#endif

#moj_import <minecraft:dynamictransforms.glsl>

uniform sampler2D Sampler0;

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
in float sphericalVertexDistance;
in float cylindricalVertexDistance;
#endif

in vec4 vertexColor;
in vec2 texCoord0;
flat in float hpwwGuiMarker;
in vec2 hpwwGuiLocalOffset;

out vec4 fragColor;

vec2 hpwwGuiFlipTexCoord(vec2 uv) {
    float localDx = dFdx(hpwwGuiLocalOffset.x);
    if (abs(localDx) >= 0.00001) {
        float uPerLocalX = dFdx(uv.x) / localDx;
        uv.x -= 2.0 * hpwwGuiLocalOffset.x * uPerLocalX;
    }

    float localDy = dFdy(hpwwGuiLocalOffset.y);
    if (abs(localDy) < 0.00001) {
        return uv;
    }

    float vPerLocalY = dFdy(uv.y) / localDy;
    uv.y -= 2.0 * hpwwGuiLocalOffset.y * vPerLocalY;
    return uv;
}

void main() {
    vec2 hpwwSampleCoord = hpwwGuiMarker > 0.5 ? hpwwGuiFlipTexCoord(texCoord0) : texCoord0;

#ifdef IS_GRAYSCALE
    vec4 texColor = texture(Sampler0, hpwwSampleCoord).rrrr;
#else
    vec4 texColor = texture(Sampler0, hpwwSampleCoord);
#endif

    bool hpwwUsesControlColor = hpwwGuiMarker > 0.5;

#ifdef IS_SEE_THROUGH
    vec4 color = hpwwUsesControlColor ? texColor : texColor * vertexColor;
#else
    vec4 color = hpwwUsesControlColor ? texColor * ColorModulator : texColor * vertexColor * ColorModulator;
#endif
    if (color.a < 0.1) {
        discard;
    }

#ifdef IS_SEE_THROUGH
    fragColor = color * ColorModulator;
#elif defined(IS_GUI)
    fragColor = color;
#else
    fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
#endif
}
