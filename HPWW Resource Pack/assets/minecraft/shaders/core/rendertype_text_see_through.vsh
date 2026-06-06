#version 330

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:globals.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;

out vec4 vertexColor;
out vec2 texCoord0;

bool isHpTextColor(vec4 color) {
    return (abs(color.r - 0.8666667) < 0.001 && abs(color.g - 0.2392157) < 0.001 && abs(color.b - 0.2392157) < 0.001) || (abs(color.r - 0.0) < 0.001 && abs(color.g - 0.7176471) < 0.001 && abs(color.b - 1.0) < 0.001);
}

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    if (isHpTextColor(Color)) {
        gl_Position.y += (40.0 / ScreenSize.y) * gl_Position.w;
    }

    vertexColor = Color;
    texCoord0 = UV0;
}
