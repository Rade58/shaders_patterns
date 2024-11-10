precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // in previous lesson we had like one dark bar at the bottom
  // and the rest is white
  // float strength = vUv.y * 10.0;


  
  // but we will now use modulo to
  // paint odd and even segments in different color
  // we ill have 10 segments, which is represented by
  // number 10.0 we are multiplying with
  float strength = mod(vUv.y * 10.0, 1.0);
  // this function produces this result
  //   (vUv.y * 10.0 - 1.0) * floor(vUv.y * 10.0 / 1.0) 



  // you will have huge aliasing but that isn't important
  // in this context, we don't care about it

  // in this case we are not doing anything special with this modulo
  // we will just have repeting color mixes across y

  // we will have 10 stripes

 
  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
}