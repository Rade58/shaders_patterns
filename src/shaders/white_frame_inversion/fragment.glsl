precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // if we would substract this
  // float strength = step(0.25, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
  // from 1.0, like this
  float strength = 1.0 - step(0.25, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
  // we would get a white squere inside
  // or better to say we would get black frame
  // which will be strange at first for you
  // since we have black background
  // and you won't notice a frame

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}