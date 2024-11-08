precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // here we have like one dark bar at the bottom
  // float strength = vUv.y * 10.0;
  // but we use module to get effect that produces
  // like look where we have stripes
  // and black is a bit more prominent in relation to previous lesson
  float strength = mod(vUv.y * 10.0, 1.0);
  // you will have huge aliasing but that isn't important here

  if(strength < 0.5){
    strength = 0.0;
  }else{
    strength = 1.0;
  }
 
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
}