precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  
  // this pattern will not have any blue color in it
  // here it is maybe easier to see the effect of uv coordinates
  gl_FragColor = vec4(vUv, 0.0, 1.0);

  //
  // gl_FragColor = vec4(vUv, 0.5, 1.0);

}