// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;



// copied fron https://thebookofshaders.com/10
float random (vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main() {

  
  vec2 lightUvX = vec2(vUv.x, (vUv.y - 0.5) * 5.0 + 0.5);
  float lightX = 0.15 / distance(lightUvX, vec2(0.5, 0.5));
  vec2 lightUvY = vec2(vUv.y, (vUv.x - 0.5) * 5.0 + 0.5);
  float lightY = 0.15 / distance(lightUvY, vec2(0.5, 0.5));
  float strength = lightX * lightY;


  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}