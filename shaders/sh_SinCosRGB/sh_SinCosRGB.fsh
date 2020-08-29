//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;

void main(void)
{
	vec2 coord = v_vTexcoord * 16.0;
	
    float red = (sin(time + coord.x) + 1.0) / 2.0;
    float green = (sin(time * 0.6 + coord.y) + 1.0) / 2.0;
    float blue = (cos(time * 0.1 + coord.x - coord.y * 2.0) + 1.0) / 2.0;

    gl_FragColor = vec4(red, green, blue, 1.0) * v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
}
