precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {


  float strength = step(0.8, mod(vUv.y * 10.0, 1.0));
  // to make a grid
  // instead of addition like this
  // strength += step(0.8, mod(vUv.x * 10.0, 1.0));
  // we will use multiplication instead
  strength *= step(0.8, mod(vUv.x * 10.0, 1.0));


  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}