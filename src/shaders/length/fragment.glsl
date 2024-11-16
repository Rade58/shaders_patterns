// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;



// copied fron https://thebookofshaders.com/10
float random (vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main() {

  // we will use length function for the first time
  // as I said we can pass vector 2, but we can also pass separate coordinate
  // which is flaot as you know
  // and which we aren't going to use because we want
  // our gradient to be radial 
  float strength = length(vUv);

  // you can also get length of other vector like vec3 or vec4
 

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}