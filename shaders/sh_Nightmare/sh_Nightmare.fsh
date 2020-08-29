varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;

void main(void)
{
    vec3 color = vec3(0.12, 0.06, 0.085);
    float coord = gl_FragCoord.x + gl_FragCoord.y;
    
    float sine = sin((coord + time * 0.64) / 24.0) * 24.0;
    float cosine = cos((coord + time * 0.96) / 96.0) * 48.0;
    float wave = ceil((fract((gl_FragCoord.x - gl_FragCoord.y + sine + cosine) / 32.0)) - 0.5);
    
    gl_FragColor = vec4(color * wave, 1.0) * (v_vColour * texture2D(gm_BaseTexture, v_vTexcoord));
}
