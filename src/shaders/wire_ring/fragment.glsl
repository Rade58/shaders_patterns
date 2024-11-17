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

// this is rotate function we copied from somewhere (used in some previous example)
vec2 rotate(vec2 uv, float rotation, vec2 mid){
  return vec2(
    cos(rotation) * (uv.x - mid.x) + sin(rotation) * (uv.y - mid.y) + mid.x,
    cos(rotation) * (uv.y - mid.y) - sin(rotation) * (uv.x - mid.x) + mid.y
  );
}
// ------------------------------------------------------------
// ------------------------------------------------------------



void main() {

  // we did this white ring in some previous example
  // float strength = 1.0 - step(0.01, abs(distance(vUv, vec2(0.5)) - 0.25));
  

  // and we did this in example before current 
  // float angle = atan(vUv.x - 0.5, vUv.y - 0.5);
  // angle /= PI * 2.0;
  // angle += 0.5;
  // float strength = sin(angle * 100.0);


  // we build sinusoid
  float angle = atan(vUv.x - 0.5, vUv.y - 0.5);
  angle /= PI * 2.0;
  angle += 0.5;
  float sinusoid = sin(angle * 100.0);


  // so the radius is 0.25, but we add sinsoid to it and lower the amplitude
  float radius = 0.25 + sinusoid * 0.02;

  // and use it here
  float strength = 1.0 - step(0.01, abs(distance(vUv, vec2(0.5)) - radius));



  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}