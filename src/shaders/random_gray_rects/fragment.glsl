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

  // from lesson before previous 
  // float strength = floor(vUv.x * 10.0) / 10.0;
  // strength *= floor(vUv.y * 10.0) / 10.0;

  // from previous lesson
  // float strength = random(vUv);

  // we combine solutions from previous 2 lessons
  // float strength = random(vec2(floor(vUv.x * 10.0) / 10.0, floor(vUv.y * 10.0) / 10.0));
  
  // or we can do it by using more variables

  vec2 gridUv = vec2(floor(vUv.x * 10.0) / 10.0, floor(vUv.y * 10.0) / 10.0);
  float strength = random(gridUv);
 
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}