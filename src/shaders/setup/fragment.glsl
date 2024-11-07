precision mediump float;
// precision highp float;

// we have sent uv coordinates from vertex to shader
varying vec2 vUv;

// we will use the vUv in nesxt lessons in order to draw shapes


uniform vec3 uColor;


varying vec3 vPosition;


void main() {



  gl_FragColor = vec4(uColor, 1.0);

}