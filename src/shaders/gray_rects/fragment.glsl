// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;

// uniform vec3 uColor;


// varying vec3 vPosition; // we didn't send this from vertex


void main() {

  
  // we had this in previous lesson
  float strength = floor(vUv.x * 10.0) / 10.0;
  // we just multiply it by same thing but we are using other uv 
  // coordinate and as you can se we are multiplying
  strength *= floor(vUv.y * 10.0) / 10.0;
  // we would also get some interesting pattern if
  // we would increment it

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}