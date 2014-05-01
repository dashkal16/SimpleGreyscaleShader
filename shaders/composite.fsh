#version 120

// Dead simple greyscale shader
// This code released to the public domain
// This shader requires the Shaders Mod and was written againsg v2.3.12
// At the time of this writing, Shader mod is located here: http://www.minecraftforum.net/topic/1544257-

uniform sampler2D gcolor;
varying vec4 texcoord;

// Values obtained from: http://en.wikipedia.org/wiki/Grayscale#Luma_coding_in_video_systems
uniform vec3 LumaFactors = vec3(0.299, 0.587, 0.114);

void main() {
    vec4 intx = texture2D(gcolor, texcoord.st);
    
    // Desaturate to luma only
    float luma = dot(vec3(intx.r, intx.g, intx.b), LumaFactors);

    gl_FragColor = vec4(luma, luma, luma, intx.a);
}
