precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // ok this would produce white frame pattern (black in the middle)
  // but we lower edge from 0.25 to 0.2
  float white_frame = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
  // and this would produce black frame pattern (white in the middle)
  // we kept edge to be 0.25
  float black_frame = 1.0 - step(0.25, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
  // if both edges would be the same you would see just black


  // we multiply them
  float strength = white_frame * black_frame;

  // we will get white frame in the middle and it will be
  // surounded by black and inside frame is black of course

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}