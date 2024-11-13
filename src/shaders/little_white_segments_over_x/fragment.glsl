precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // instead of vUv.y I am going to use vUv.x 
  float strength = mod(vUv.x * 10.0, 1.0);


  strength = step(0.8, strength);

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}