#version 330

// Full Screen Quad
layout (location = 0) in vec2 pos;

void main() {
   gl_Position = vec4(pos, 0.0f, 1);
}



// Normal Geometry
uniform mat4 matVP;
uniform mat4 matGeo;

layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 normal;

out vec4 color;

void main() {
   color = vec4(abs(normal), 1.0);
   gl_Position = matVP * matGeo * vec4(pos, 1);
}