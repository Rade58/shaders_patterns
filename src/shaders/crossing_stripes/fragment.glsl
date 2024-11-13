precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // what can we do to also use vUv.x in our example


  // instead of just using y this
  // float strength = mod(vUv.y * 10.0, 1.0);
  // we can define two separate strenghts
  float strength_y = mod(vUv.y * 10.0, 1.0);

  float strength_x = mod(vUv.x * 10.0, 1.0);

  // and make addition here
  float strength = step(0.8, strength_y) + step(0.8, strength_x);

  // and we will get pattern where y segments are crossing x segments

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}