precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  
  float strength = vUv.y;

  
  gl_FragColor = vec4(1.0 - vUv.xy, 0.0, 1.0);
  
}