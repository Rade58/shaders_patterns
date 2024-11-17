// already defined with ShaderMaterial
// precision mediump float;


#define PI 3.1415926535897932384626433832795

varying vec2 vUv;


// -----------------------------------------------------------
// -----------------------------------------------------------
// defined those two earlier (just keeping them here if we would need
// them in future, but they are not part of this lesson)
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
// ------------------------------------------------------------
// ------------------------------------------------------------



void main() {

  // this is previous example  
  // float strength = abs(distance(vUv, vec2(0.5)) - 0.25);
  // we need to use step and alter some values
  float strength = step(0.01, abs(distance(vUv, vec2(0.5)) - 0.25));

  // to acomplsh drawing of white ring over black background
  // we would just substract from 1.0
  // float strength = 1.0 - step(0.01, abs(distance(vUv, vec2(0.5)) - 0.25));



  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}