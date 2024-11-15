// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;

// uniform vec3 uColor;


// varying vec3 vPosition; // we didn't send this from vertex


void main() {

  
  // this is something I tried to get to solution
  // float strength = vUv.x;
  // float strength = mod(vUv.x * 10.0, 1.0);
  // float strength = step(0.5, mod(vUv.x * 10.0, 1.0));
  
  // but we need to use round function we didn't ever use before
  float strength = round(vUv.x * 10.0) / 10.0;

  // we will have one problem, on the last bar which is white
  // it will be a little elongated
  // we will fix that in next lesson

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}