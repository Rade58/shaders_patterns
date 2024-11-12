precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  
  // ok, we know that this, if not messed with, it will produce
  // bars pattern
  float strength = mod(vUv.y * 10.0, 1.0);
  
  // but here we are altering the value depending on the
  // reminder
  if(strength < 0.5){
    strength = 0.0; // this will create entirely black color
  }else{
    strength = 1.0; // this will create entirely white color
  }
 
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
}