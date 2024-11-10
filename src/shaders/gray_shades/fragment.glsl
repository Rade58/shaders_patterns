precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // ok, we know that this is white
  // gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);

  // what happens if we would lower the the r g b numbers
  // but keep the same value for all of them
  // I would assume whe will get some kind of gray

  // this will be very dark gray
  // gl_FragColor = vec4(0.1, 0.1, 0.1, 1.0);

  // and this will ne som light gray
  gl_FragColor = vec4(0.6, 0.6, 0.6, 1.0);

}