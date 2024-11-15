// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;



// copied fron https://thebookofshaders.com/10
// this function is pseudo random
// not trully random since always will produce
// same result, for the desired coordinates
float random (vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main() {

 
  // we will be adding offset to these coordinates
  // vec2 gridUv = vec2(floor(vUv.x * 10.0) / 10.0, floor(vUv.y * 10.0) / 10.0);
  // we will add vUv.x coordinate to the y coordinate in floor
  // we also multiplied with 0.5

  vec2 gridUv = vec2( floor(vUv.x * 10.0) / 10.0, floor((vUv.y + vUv.x * 0.5) * 10.0) / 10.0);
  float strength = random(gridUv);
 
  // rectangles will look tilted

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}