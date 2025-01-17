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
    color.r *= rEffect;
    color.g *= gEffect;
    color.b *= bEffect;
    color.rgb += brightness;
    color.rgb = clamp(color.rgb, 0.0, 1.0);
    fragColor = color;
}