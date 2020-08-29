//#define PI 3.14159
#define PI05 1.5707

uniform float u_fTime;

const vec2 RESOLUTION = vec2(800.0, 608.0);

float round (float val) {
	return ceil(val - 0.5);
}

varying vec4 v_vColour;
varying vec2 v_vTexcoord;

void main() {
    vec3 color_bg = vec3(0.8, 0.6, 0.5);
    vec3 color_sub = vec3(0.7, 0.45, 0.25);
    
    vec2 uv = gl_FragCoord.xy / RESOLUTION;
    float line = round(step(mod(uv.x + uv.y, 0.05 + sin(u_fTime - PI05 + uv.x) * 0.1), 0.025));
    
    gl_FragColor = vec4(color_bg - color_sub * line, 1.0) * (v_vColour * texture2D(gm_BaseTexture, v_vTexcoord));
}