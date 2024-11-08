precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // instead of this
  // float strength = vUv.x;
  // let's use y
  float strength = vUv.y;
 
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
}