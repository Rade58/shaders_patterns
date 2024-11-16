// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;



// copied fron https://thebookofshaders.com/10
float random (vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main() {

  // we can just substract 0.5 from the uVu vec2 and center of the
  // gradient will be in the center of the plane

  float strength = length(vUv - 0.5);

 

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}