#version 400

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 vColor;        // Coming in from your OpenGL program
layout (location = 2) in float offset;

out vec3 color;        // Going to (and defined in) your fragment shader.


void main()
{
    gl_Position =vec4(aPos.x, aPos.y + offset, aPos.z, 1.0);
    color = vColor;


}