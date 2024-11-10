precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  
  // we want to acomplish some, from dark to white pattern
  // but let's not use uv coordinates at first

  // first let's remind ourself that this is pure white
  // gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);

  // and let's remind ourselfs that this is pure black
  // gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);

  // this is some nuance of gray color
  // we acomplish this when all rgb values are the same
  // we have set rgb value to 0.5
  // gl_FragColor = vec4(0.5, 0.5, 0.5, 1.0);
  // or more brighter to 0.7
  // gl_FragColor = vec4(0.7, 0.7, 0.7, 1.0);

  // well, to acomplish mentioned grayscale pattern
  // we use uv coordinates

  // Let's use intuition of how we would acomplish gray
  // color nuances, even we use uv coordinates

  // well if we use same uv coordinate for the rgb
  // it should come out as gray

  // gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0);
  // we really got a gradient where left is pure black and right is
  // pure white and middle space which is most of the space
  // holds all gray nuances between black and white


  // or we can write it much simpler shorthand syntax
  // gl_FragColor = vec4(vUv.xxx, 1.0);
  
  // or we can invert it like this (we change direction like this)

  // gl_FragColor = vec4(1.0 - vUv.xxx, 1.0);
  
  // or we can display grayscale pattern over y axis
  gl_FragColor = vec4(vUv.yyy, 1.0);
  
}