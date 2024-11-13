precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  //  instead of this
  // float strength = step(0.8, mod(vUv.y * 10.0, 1.0));
  // strength *= step(0.4, mod(vUv.x * 10.0, 1.0));
  // let's have two variables

  // and we played around with edge values (first argument of step)

  float barY = step(0.4, mod(vUv.y * 10.0, 1.0));
  barY *= step(0.8, mod(vUv.x * 10.0, 1.0));
  
  float barX = step(0.8, mod(vUv.y * 10.0, 1.0));
  barX *= step(0.4, mod(vUv.x * 10.0, 1.0));

  // and we added two variables
  float strength = barX + barY;

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}