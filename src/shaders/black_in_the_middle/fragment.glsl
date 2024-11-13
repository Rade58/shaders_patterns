precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // so you will have black in the middle and gradient that goes
  // to the the white towards left and right side
  
  // so, coordiantes go from 0.0 to 1.0
  // but to accomplish this we need something to go from -0.5 to 0.5


  // but we need to use abs function
  // because we need absolute value, we can't have negative values 

  // it makes sense 
  float strength = abs(vUv.x - 0.5);


  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}