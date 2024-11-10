precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  
  
  float strength = vUv.y;

  // this multiplication will make one color between
  // black and white
  // to be more prominent
  // and that is white
  // which means we will have more lighter nuances
  strength = strength * 10.0;

  // little black will be on the bottom
 
  // gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
  // we can invert this situation by substracting from 1.0

  strength = 1.0 - strength;

  // now black takes the most place on the plane
  // only on the bottom we have white stripe so to speak 

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}