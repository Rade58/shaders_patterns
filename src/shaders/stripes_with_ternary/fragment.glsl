precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  
  float strength = mod(vUv.y * 10.0, 1.0);
  
 
  // instead of this
  // if(strength < 0.5){
  //    strength = 0.0;
  // }else{
  //    strength = 1.0;
  // }
  
  // we will use ternary
  strength = strength > 0.5 ? 1.0 : 0.0;

  // same goes for ternary that we told you for if statements
  // avoid them, they are bad for performance


  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
}