// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;



// copied fron https://thebookofshaders.com/10
float random (vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main() {

  // maybe I should offset vUv.x, instead of this
  // float strength = 0.015 / distance(vUv, vec2(0.5, 0.5));
  // we will create new vec2

  // author of the workshop can't figure out math behinfd this one
  // but just with playing with numbers he get some result he wanted

  // one way
  // vec2 lightUv = vec2(vUv.x * 0.1 + 0.45, vUv.y * 0.5 + 0.25);
  // float strength = 0.015 / distance(lightUv, vec2(0.5, 0.5));
  // another way
  vec2 lightUv = vec2(vUv.x, (vUv.y - 0.5) * 5.0 + 0.5);
  float strength = 0.15 / distance(lightUv, vec2(0.5, 0.5));

 

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}