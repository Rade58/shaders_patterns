// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;

// uniform vec3 uColor;


// varying vec3 vPosition; // we didn't send this from vertex


void main() {

  
  // instead of round
  // float strength = round(vUv.x * 10.0) / 10.0;
  //  we are using floor
  float strength = floor(vUv.x * 10.0) / 10.0;

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}