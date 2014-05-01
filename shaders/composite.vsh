#version 120

// Dead simple greyscale shader
// This code released to the public domain
// This shader requires the Shaders Mod and was written againsg v2.3.12
// At the time of this writing, Shader mod is located here: http://www.minecraftforum.net/topic/1544257-

varying vec4 texcoord;

void main() {
    gl_Position = ftransform();
    texcoord = gl_MultiTexCoord0;
}
