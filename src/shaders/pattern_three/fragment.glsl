precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  
  // we want to acomplish some, from dark to white pattern

  // first let's find white by or some grey by setting every
  // rgb value to 0.5
  // gl_FragColor = vec4(0.5, 0.5, 0.5, 1.0);
  // or more brighter
  // gl_FragColor = vec4(0.8, 0.8, 0.8, 1.0);

  // well to acomplish mentioned pattern
  // we use uv coordinates
  // gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0);
  // or we can use much simpler shorthand syntax
  gl_FragColor = vec4(vUv.xxx, 1.0);
  
}