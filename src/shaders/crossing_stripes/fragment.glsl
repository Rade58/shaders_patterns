precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // what can we do to also use vUv.x in our example
  // so we can have repeating segments over x too 
  // well we can add it to strength, just like thsi

  // instead of just using y this
  // float strength = mod(vUv.y * 10.0, 1.0);
  // we can add a part with x
  float strength = mod(vUv.y * 10.0, 1.0);

  float s = mod(vUv.x * 10.0, 1.0);

  strength = step(0.8, strength) + step(0.8, s);

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}