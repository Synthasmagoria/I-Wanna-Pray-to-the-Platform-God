

uniform float u_fTime;
const vec2 resolution = vec2(800.0, 608.0);

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 color_sub = vec4(-0.1, 0.85, 0.75, -0.5);
    vec4 color_water = vec4(0.0, 1.0, 1.0, 0.5);
    vec2 position = gl_FragCoord.xy - resolution / 2.0;
    float circle = step(abs(position.x + position.y), u_fTime * 32.0 * (sin(u_fTime) + 8.0));

    gl_FragColor = vec4(color_water - color_sub * circle) * (v_vColour * texture2D(gm_BaseTexture, v_vTexcoord));
}