precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  
  float strength = vUv.y * 10.0;
 
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
}