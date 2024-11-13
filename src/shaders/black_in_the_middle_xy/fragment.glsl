precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  
  float strength = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));


  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}