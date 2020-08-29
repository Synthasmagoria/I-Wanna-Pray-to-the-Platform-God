
uniform float u_fTime;
const vec2 resolution = vec2(800.0, 608.0);

void main() {
	vec2 uv = abs(gl_FragCoord.xy / resolution - 0.5);
    vec3 color = vec3(0.1, 0.15, 0.25);
    vec3 color_add = vec3(0.7, 0.45, 0.25);
    float alpha = min(u_fTime / 3.14, 1.0);
    
    float lines = step(mod(uv.x + uv.y - u_fTime * 0.25, 0.09), 0.025);
    
    gl_FragColor = vec4(color + color_add * lines * alpha, 1.0);
}