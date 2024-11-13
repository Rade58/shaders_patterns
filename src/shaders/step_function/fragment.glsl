precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  
  float strength = mod(vUv.y * 10.0, 1.0);
  
 
  // so instead of this if else statement
  // if(strength < 0.5){
  //    strength = 0.0;
  // }else{
  //    strength = 1.0;
  // }
  // or instead of this ternary
  // strength = strength > 0.5 ? 1.0 : 0.0;

  // we can use this step function
  strength = step(0.5, strength);
  // if strenght is greather than 0.5 threshold, result will be 1.0
  // and it will be 0.0 if strength is lesser than mentioned threshold

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}