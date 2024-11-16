// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;



// copied fron https://thebookofshaders.com/10
float random (vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main() {

  // we need to start from small value like 0.01
  // and we divide that by the the distance call we used earlier
  float strength = 0.01 / distance(vUv, vec2(0.5, 0.5));
  // also try with 0.015 and 0.030 for example
  // also try to add 0.25 to the entire thing to see
  // the limit of the plane if you want it
  // problem wuth this is you will never have reached zero value
  // in terms of coordinates and edge of the plane will be visible
  // which is not ideal if you want to display something
  // that looks like a star for example
  // black of the background and edge of the plane will be different
  // colors which is not ideal

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}