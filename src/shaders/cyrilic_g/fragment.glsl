precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // let's try to create cyrilic г
  // float barY = step(0.4, mod(vUv.y * 10.0, 1.0));
  // barY *= step(0.8, mod(vUv.x * 10.0, 1.0));
  
  // float barX = step(0.8, mod(vUv.y * 10.0, 1.0));
  // barX *= step(0.4, mod(vUv.x * 10.0, 1.0));

  // idea is to remove something from dividend (0.2 for example)
  float barY = step(0.4, mod(vUv.x * 10.0 - 0.2, 1.0));
  barY *= step(0.8, mod(vUv.y * 10.0, 1.0));
  
  // and added 0.2 here to the dividend
  float barX = step(0.8, mod(vUv.x * 10.0 + 0.2, 1.0));
  barX *= step(0.4, mod(vUv.y * 10.0, 1.0));

  float strength = barX + barY;

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}