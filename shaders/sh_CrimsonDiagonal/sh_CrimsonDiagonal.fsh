//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;

void main()
{
    vec3 color = vec3(0.3, 0.0, 0.0);
    float diagonal = step(mod(gl_FragCoord.x + gl_FragCoord.y * 3.0 + time, 20.0), 8.0);
    gl_FragColor = vec4(color * diagonal, 1.0) * v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
}