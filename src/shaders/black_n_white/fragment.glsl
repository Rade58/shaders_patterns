precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // ok, we are not using uv coordinets now
  // I'm just observing and noticing some things

  // if we have all zeroes for r g b, that will 
  // produce only black color which makes sense 
  // gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);

  // and with all 1.0, we will have completelly white color

  gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);


}