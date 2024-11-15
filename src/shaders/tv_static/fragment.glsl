// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;

// uniform vec3 uColor;


// varying vec3 vPosition; // we didn't send this from vertex


// this is the function we copied fron https://thebookofshaders.com/10

float random (vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main() {

  
  // we used it right here
  // float strength = random(vUv.xy);
  float strength = random(vUv);
 
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}