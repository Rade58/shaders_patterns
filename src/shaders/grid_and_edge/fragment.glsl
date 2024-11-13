precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  float strength = step(0.8, mod(vUv.y * 10.0, 1.0));
  
  // if you want to increse white spot of the grid to be more wider
  // strength *= step(0.8, mod(vUv.x * 10.0, 1.0));
  // we will decrease edge from 0.8 to 0.4  for example
  // strength *= step(0.4, mod(vUv.x * 10.0, 1.0));
  // to  make stripes more narower we would increase edge  
  strength *= step(0.9, mod(vUv.x * 10.0, 1.0));


  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}