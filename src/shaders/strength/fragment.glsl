precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;




void main() {
  

  // so we isolate value inside floating point variable
  float strength = vUv.x;

  // why this can be usefull
  // I gess if we want to claculate something
  // if we want to make an inversion, let's say we want
  // our grayscale pattern to go from white to black
  // from left to right, when in contrast it went from
  // black to white
  strength = 1.0 - strength;


  // and here we are going to use mentioned value
  // inside vector 3 as each ov the coordinates
  //
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  // we could have do it like this, we will get the same effect
  // but code above is much cleaner I guess
  // gl_FragColor = vec4(strength, strength, strength, 1.0);



}