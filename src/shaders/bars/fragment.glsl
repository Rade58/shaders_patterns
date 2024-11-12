precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  

  // in previous lesson we had like one dark bar at the bottom
  // and the rest is white
  // float strength = vUv.y * 10.0;

  // since we plan to use modulo
  // let's first explain what is divisor or number
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
  // this above, produces only two possible values
  // a reminder of 0.5, or no remider which is result: 0.0

  // which means that color mix producet at the end will only be built
  // with these numbers a nuances between 0.0 and 0.5 


  // we will have 10 stripes since I multiplied with 10

  // if we would play with these numbers above (dividend and divisor)
  // we wouldn't just lower or increase number of bars
  // also shades of gray would also change; so that is
  // something to pay attentiont to
  // in next lesson we will test that out

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);
  
  
  
}