#version 330

// Full Screen Quad
uniform vec2 uRes;
uniform float uTime;

out vec4 outColor;

void main()
{
    vec2 uv = gl_FragCoord.xy / uRes;
    outColor = vec4(0.5 + 0.5 * cos(uTime + uv.yxy), 1.0);
}



// Normal Geometry
in vec4 color;
out vec4 outColor;

void main() {
   outColor = vec4(color);
}