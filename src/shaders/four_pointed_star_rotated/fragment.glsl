// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;



// copied fron https://thebookofshaders.com/10
float random (vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

// this is rotate function we copied from somewhere
vec2 rotate(vec2 uv, float rotation, vec2 mid){
  return vec2(
    cos(rotation) * (uv.x - mid.x) + sin(rotation) * (uv.y - mid.y) + mid.x,
    cos(rotation) * (uv.y - mid.y) - sin(rotation) * (uv.x - mid.x) + mid.y
  );
}



void main() {
  // we will rotate star from previous example by one-eight of
  // a full circle 
  vec2 rotatedUv = rotate(vUv, 0.8, vec2(0.5));
  

  // and instead of using original vUv, we use the one
  // we calculated
  vec2 lightUvX = vec2(rotatedUv.x, (rotatedUv.y - 0.5) * 5.0 + 0.5);
  float lightX = 0.15 / distance(lightUvX, vec2(0.5, 0.5));
  vec2 lightUvY = vec2(rotatedUv.y, (rotatedUv.x - 0.5) * 5.0 + 0.5);
  float lightY = 0.15 / distance(lightUvY, vec2(0.5, 0.5));
  float strength = lightX * lightY;



  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}