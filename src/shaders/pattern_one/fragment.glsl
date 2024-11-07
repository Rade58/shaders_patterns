precision mediump float;
// precision highp float;

// as I've said, we have sent uv coordinates from vertex to shader
varying vec2 vUv;

// we will use the vUv in order to display some kind of gtadient


// uniform vec3 uColor;


varying vec3 vPosition;


void main() {

  // gl_FragColor = vec4(uColor, 1.0);

  // since you know how to use vector2 instances
  // with vector 4 instance, this is how we are going to use uv
  // coordinates
  // this is the same  
  // gl_FragColor = vec4(vUv.x, vUv.y, 1.0, 1.0);
  // as this
  // gl_FragColor = vec4(vUv, 1.0, 1.0);
  // or same as this
  gl_FragColor = vec4(vUv.xy, 1.0, 1.0);
  
// this patter is famous because you can see it ins ome benchmark
// tests /i think

}