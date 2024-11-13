precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  
  float strength = mod(vUv.y * 10.0, 1.0);
  
 
 
  // increasing threshold (it also called edge so we are incresing edge)
  // from 0.5 we had before, ro 0.8
  strength = step(0.8, strength);

  // white segments will be smaller
  // if we would increase edge above 0.5, white segments woulfd be larger


  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
    
}