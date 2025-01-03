// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;



// copied fron https://thebookofshaders.com/10
float random (vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main() {

  // we multiply it by 10.0
  float strength = 1.0 - distance(vUv, vec2(0.5, 0.5)) * 10.0;


  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}