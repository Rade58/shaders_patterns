precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // instead of this
  //  float strength = vUv.x;
  // let's use y coordinate
  float strength = vUv.y;
 
  // it will produce color changing from white to black
  // if we look from top to bottom on vertical (y axis)
  // color look the same as before but it is in different positions

  // gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

  // let's invert it, let;s say we want black to be ot the top and 
  // white on the boottom (to change direction over vertical)

  strength = 1.0 - strength;
  
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}