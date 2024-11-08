precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // instead of this
  // float strength = vUv.y;
  // we do it like this
  float strength = 1.0 - vUv.y;
 
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
}