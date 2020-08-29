
varying vec4 v_vColour;

void main() {
    vec2 uv = vec2(gl_FragCoord.x / 800.0 + sin(gl_FragCoord.x), gl_FragCoord.y / 608.0);
	vec4 color = texture2D(gm_BaseTexture, uv);
    gl_FragColor = v_vColour * vec4(color.rgb, 1.0);
}