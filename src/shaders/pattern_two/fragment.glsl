precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  
  gl_FragColor = vec4(vUv, 0.0, 1.0);

}