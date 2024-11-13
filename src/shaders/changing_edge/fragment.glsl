precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {


  float strength = mod(vUv.y * 10.0, 1.0);

  // strength = step(0.8, strength);
  // increasing edge the stripes will be smaller
  // strength = step(0.9, strength);
  // and decreasing edge stripes will become larger
  strength = step(0.1, strength);

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}