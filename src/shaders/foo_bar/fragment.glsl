precision mediump float;
// precision highp float;

varying vec2 vUv;

// uniform vec3 uColor;


varying vec3 vPosition;


void main() {
  
  // this pattern will not have any blue color in it
  // here it is maybe easier to see the effect of uv coordinates
  // because you don't have as intensive mix of colors
  
  // gl_FragColor = vec4(vUv, 0.0, 1.0);

  // this patter is famous because you can see it in some benchmark
  // tests, as I heard from workshop author
  // they use it in tests for games


  // here we can play around and try to invert 
  // direction of color mixing
  
  // gl_FragColor = vec4(vUv.yx, 0.0, 1.0);
  
  // now the red is in top left region, and
  // green is in bottom right region


  // but we can invert colors by substracting from 1.0

  // gl_FragColor = vec4(1.0 - vUv, 0.0, 1.0);
  // this will have same direction as we used vUv.yx


  // but for the end let's use the one we started this lesson with
  gl_FragColor = vec4(vUv, 0.0, 1.0);
}