#version 330

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:sample_lightmap.glsl>
#endif

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
in ivec2 UV2;
#endif

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
uniform sampler2D Sampler2;
out float sphericalVertexDistance;
out float cylindricalVertexDistance;
#endif

out vec4 vertexColor;
out vec2 texCoord0;

bool isHpTextColor(vec4 color) {
    return (abs(color.r - 0.8666667) < 0.001 && abs(color.g - 0.2392157) < 0.001 && abs(color.b - 0.2392157) < 0.001) || (abs(color.r - 0.0) < 0.001 && abs(color.g - 0.7176471) < 0.001 && abs(color.b - 1.0) < 0.001);
}

float hpTextYOffset() {
#if defined(IS_GUI)
    return 34.3333;
#elif defined(IS_SEE_THROUGH)
    return 6.6667;
#else
    return 0.0;
#endif
}

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

#if defined(IS_GUI) || defined(IS_SEE_THROUGH)
    if (isHpTextColor(Color)) {
        gl_Position.y += hpTextYOffset() * abs(ProjMat[1][1]) * gl_Position.w;
    }
#endif

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    vertexColor = Color * sample_lightmap(Sampler2, UV2);
#else
    vertexColor = Color;
#endif
    texCoord0 = UV0;
}