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
flat out float hpwwGuiMarker;

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
const float HPWW_GUI_COLUMNS = 29.0;
const float HPWW_GUI_ROWS = 15.0;
const float HPWW_GUI_GLYPH_SIZE = 48.0;
const float HPWW_GUI_ACTIONBAR_CENTER_FROM_BOTTOM = 35.0;

struct HpwwGuiSlot {
    bool enabled;
    int align;
    int x;
    int y;
};

int hpwwGuiBcdByteToDecimal(int value) {
    int tens = value / 16;
    int ones = value - (tens * 16);
    if (tens > 9 || ones > 9) {
        return -1;
    }
    return tens * 10 + ones;
}

HpwwGuiSlot hpwwGuiDecodeSlot(vec4 color) {
    ivec3 marker = ivec3(floor(color.rgb * 255.0 + vec3(0.5)));
    int align = marker.r;
    int x = hpwwGuiBcdByteToDecimal(marker.g);
    int y = hpwwGuiBcdByteToDecimal(marker.b);
    bool enabled = align >= 0 && align <= 4 && x >= 1 && x <= 29 && y >= 1 && y <= 15;
    return HpwwGuiSlot(enabled, align, x, y);
}

vec2 hpwwGuiScreenSize() {
    return vec2(
        2.0 / max(abs(ProjMat[0][0]), 0.0001),
        2.0 / max(abs(ProjMat[1][1]), 0.0001)
    );
}

vec2 hpwwGuiGridPoint(int x, int y) {
    vec2 screenSize = hpwwGuiScreenSize();
    vec2 cellSize = screenSize / vec2(HPWW_GUI_COLUMNS, HPWW_GUI_ROWS);
    vec2 centerCell = vec2((HPWW_GUI_COLUMNS + 1.0) * 0.5, (HPWW_GUI_ROWS + 1.0) * 0.5);
    return screenSize * 0.5 + (vec2(float(x), float(y)) - centerCell) * cellSize;
}

vec2 hpwwGuiApplyAlignment(vec2 target, int align) {
    float halfGlyph = HPWW_GUI_GLYPH_SIZE * 0.5;
    if (align == 1) {
        target.x += halfGlyph;
    } else if (align == 2) {
        target.y += halfGlyph;
    } else if (align == 3) {
        target.x -= halfGlyph;
    } else if (align == 4) {
        target.y -= halfGlyph;
    }
    return target;
}
vec2 hpwwGuiCornerOffset() {
    float halfGlyph = HPWW_GUI_GLYPH_SIZE * 0.5;
    int corner = gl_VertexID - (gl_VertexID / 4) * 4;
    if (corner == 0) {
        return vec2(-halfGlyph, -halfGlyph);
    } else if (corner == 1) {
        return vec2(-halfGlyph, halfGlyph);
    } else if (corner == 2) {
        return vec2(halfGlyph, halfGlyph);
    }
    return vec2(halfGlyph, -halfGlyph);
}

vec4 hpwwGuiPositionForSlot(vec4 viewPosition, HpwwGuiSlot slot) {
    vec2 targetCenter = hpwwGuiApplyAlignment(hpwwGuiGridPoint(slot.x, slot.y), slot.align);
    viewPosition.xy = targetCenter + hpwwGuiCornerOffset();
    return viewPosition;
}
vec2 hpwwGuiFlipTexCoord(vec2 uv) {
    float glyphRows = 16.0;
    float cellTop = floor(uv.y * glyphRows) / glyphRows;
    float cellBottom = cellTop + (1.0 / glyphRows);
    return vec2(uv.x, cellTop + cellBottom - uv.y);
}

void main() {
    vec4 hpwwViewPosition = ModelViewMat * vec4(Position, 1.0);
    hpwwGuiMarker = 0.0;

#if defined(IS_GUI)
    HpwwGuiSlot hpwwGuiSlot = hpwwGuiDecodeSlot(Color);
    if (hpwwGuiSlot.enabled) {
        hpwwViewPosition = hpwwGuiPositionForSlot(hpwwViewPosition, hpwwGuiSlot);
        hpwwGuiMarker = 1.0;
    }
#endif

    gl_Position = ProjMat * hpwwViewPosition;

#if defined(IS_GUI) || defined(IS_SEE_THROUGH)
    if (hpwwGuiMarker < 0.5 && isHpTextColor(Color)) {
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
    texCoord0 = hpwwGuiMarker > 0.5 ? hpwwGuiFlipTexCoord(UV0) : UV0;
}