precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // we won't change anything, just refactor code
  // from previous example 
  
  // instead all of this
  // float strength_y = mod(vUv.y * 10.0, 1.0);
  // float strength_x = mod(vUv.x * 10.0, 1.0);
  // float strength = step(0.8, strength_y) + step(0.8, strength_x);
  // we can write it like this:
  float strength = step(0.8, mod(vUv.y * 10.0, 1.0));
  strength += step(0.8, mod(vUv.x * 10.0, 1.0));
  
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}