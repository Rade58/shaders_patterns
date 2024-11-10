precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // this will produce some color mix that will be
  // more uniform
  // it will be yellow, that is fading from the right to the left
  // gl_FragColor = vec4(vUv.xx, 0.0, 1.0);

  // this will be yellow that is fading in oposite direction
  // gl_FragColor = vec4(1.0 - vUv.xx, 0.0, 1.0);

  // this will be the same yellowish color, just fading will go
  // from top to bottom
  // gl_FragColor = vec4(vUv.xx, 0.0, 1.0);

  // and again, same color but fading in oposite direction
  gl_FragColor = vec4(1.0 - vUv.yy, 0.0, 1.0);



}