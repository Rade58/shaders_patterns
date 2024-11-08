precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // so we isolate value inside floating point variable
  float strength = vUv.x;

  // and here we are going to use mentioned value
  // inside vector 3 as each ov the coordinates
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
}