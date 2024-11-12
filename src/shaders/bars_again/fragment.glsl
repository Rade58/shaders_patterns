precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

 
  // instead of using 10.0 to multiply dividend
  // and using one as a divisor
  // float strength = mod(vUv.y * 10.0, 1.0);

  // we can try useing 0.1 as a divisor and not multiply dividend
  float strength =  mod(vUv.y, 0.1);
  // you would think that we would accomplish same result
  // un terms of number of segmants we would, but our bars would be painted
  // in darker gray nuances
  
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
  
}