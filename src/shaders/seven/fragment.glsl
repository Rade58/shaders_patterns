precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // here we have like one dark bar at the bottom
  // and the rest is white
  // float strength = vUv.y * 10.0;
  
  // but we use module to get effect that produces
  // look where we have stripes and we need to use modulo
  // 
  float strength = mod(vUv.y * 10.0, 1.0);
  // you will have huge aliasing but that isn't important
  // in this context, we don't care about it

  // in this case we are not doing anything special with this modulo
  // we will just have repeting color mixes across y

  // we will have 10 stripes

 
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
}