precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // in previous lesson we had like one dark bar at the bottom
  // and the rest is white
  // float strength = vUv.y * 10.0;

  // let's first define what is divisor or number
  // we are deviding by (second argument)
  // -    should be maximum of the value of the uv coordinate
  // and we need dividend
  // a number we a are dividing
  

  // for start let's define that dividend would be one of the
  // coordinates

  // float strength = mod(vUv.y, 1.0);
  // 
  // 
  // gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

  // you will have huge aliasing but that isn't important
  // in this context, we don't care about it

  // this time we won't have nothing divided
  // but let's multiply mentioned coordinate by 10

  float strength = mod(vUv.y * 10.0, 1.0);
  
  // in this case we are not doing anything special with this modulo
  // we will just have repeting color mixes across y

  // we will have 10 stripes since I multiplied with 10

  // we could have gone other way around of lowering divisor
  // from 1.0 to 0.5 for example but let's not do that
  // in any new example ,let's multiply be dividend like we already did


  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
  
}