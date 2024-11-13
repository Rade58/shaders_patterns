precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // so we must add some offset or remove some offset
  // but to create like little plus
  // we must make offset for both uv coordinates

  // idea is to remove something from dividend for wxample 0.2
  // and we did thi fot y uv coordinate
  // and it needs to be half of the step threshold (threshold of the step)
  float barY = step(0.4, mod(vUv.x * 10.0 - 0.2, 1.0));
  barY *= step(0.8, mod(vUv.y * 10.0, 1.0));
  
  float barX = step(0.8, mod(vUv.x * 10.0, 1.0));
  // and here we can remove the same value
  // and we are doing this for y uv coordinate
  // and in here it needs to be half of the threshold
  barX *= step(0.4, mod(vUv.y * 10.0 - 0.2, 1.0));

  float strength = barX + barY;

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}