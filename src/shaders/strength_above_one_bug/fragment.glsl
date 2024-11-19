precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // this is from original example without color
  float strength = step(0.8, mod(vUv.y * 10.0, 1.0));
  strength += step(0.8, mod(vUv.x * 10.0, 1.0));

  // this is the mentioned bug wix, we clamp it between 0.0 and 1.0
  strength = clamp(strength, 0.0, 1.0);

  // here we introduce color
  //  --------------------------------------------------
  vec3 blackColor = vec3(0.0);
  vec3 uvColor = vec3(vUv, 1.0);

  vec3 mixedColor = mix(blackColor, uvColor, strength);

  gl_FragColor = vec4(mixedColor, 1.0);
  //  --------------------------------------------------
  
  // gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}