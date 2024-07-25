#include <flutter/runtime_effect.glsl>

out vec4 fragColor;

uniform vec2 uSize;
uniform float brightness;
uniform float rEffect;
uniform float gEffect;
uniform float bEffect;
uniform sampler2D uTexture;

void main() {
    vec2 uv = FlutterFragCoord().xy / uSize;
    vec4 color = texture(uTexture, uv.xy).rgba;
    float gray = color.r * rEffect + color.g * gEffect + color.b * bEffect;
    gray += brightness;
    gray = clamp(gray, 0.0, 1.0);
    fragColor = vec4(gray, gray, gray, color.a);
}
