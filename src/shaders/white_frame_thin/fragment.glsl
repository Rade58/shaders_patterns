precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // we just set edge to 0.45 instead of 0.25
  float strength = step(0.45, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));


  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}