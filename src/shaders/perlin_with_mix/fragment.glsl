// already defined with ShaderMaterial
// precision mediump float;


#define PI 3.1415926535897932384626433832795

varying vec2 vUv;

// we copied this since function bellow, uses is as depndancy
vec4 permute(vec4 x){return mod(((x*34.0)+1.0)*x, 289.0);}

// we copied this from mentioned gist
// https://gist.github.com/patriciogonzalezvivo/670c22f3966e662d2f83#classic-perlin-noise
//	Classic Perlin 2D Noise 
//	by Stefan Gustavson (https://github.com/stegu/webgl-noise)
//
vec2 fade(vec2 t) {return t*t*t*(t*(t*6.0-15.0)+10.0);}

float cnoise(vec2 P){
  vec4 Pi = floor(P.xyxy) + vec4(0.0, 0.0, 1.0, 1.0);
  vec4 Pf = fract(P.xyxy) - vec4(0.0, 0.0, 1.0, 1.0);
  Pi = mod(Pi, 289.0); // To avoid truncation effects in permutation
  vec4 ix = Pi.xzxz;
  vec4 iy = Pi.yyww;
  vec4 fx = Pf.xzxz;
  vec4 fy = Pf.yyww;
  vec4 i = permute(permute(ix) + iy);
  vec4 gx = 2.0 * fract(i * 0.0243902439) - 1.0; // 1/41 = 0.024...
  vec4 gy = abs(gx) - 0.5;
  vec4 tx = floor(gx + 0.5);
  gx = gx - tx;
  vec2 g00 = vec2(gx.x,gy.x);
  vec2 g10 = vec2(gx.y,gy.y);
  vec2 g01 = vec2(gx.z,gy.z);
  vec2 g11 = vec2(gx.w,gy.w);
  vec4 norm = 1.79284291400159 - 0.85373472095314 * 
    vec4(dot(g00, g00), dot(g01, g01), dot(g10, g10), dot(g11, g11));
  g00 *= norm.x;
  g01 *= norm.y;
  g10 *= norm.z;
  g11 *= norm.w;
  float n00 = dot(g00, vec2(fx.x, fy.x));
  float n10 = dot(g10, vec2(fx.y, fy.y));
  float n01 = dot(g01, vec2(fx.z, fy.z));
  float n11 = dot(g11, vec2(fx.w, fy.w));
  vec2 fade_xy = fade(Pf.xy);
  vec2 n_x = mix(vec2(n00, n01), vec2(n10, n11), fade_xy.x);
  float n_xy = mix(n_x.x, n_x.y, fade_xy.y);
  return 2.3 * n_xy;
}




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

  float strength = step(0.9, sin(cnoise(vUv * 10.0) * 20.0));

  // colored version of our previous example
  // since this upper variable is used in lamost any of our
  // programs
  // we can use next thing we defined, in almost any otf our example
  // I suggest you do it

  // -------------------------------------------


  vec3 blackColor = vec3(0.0);
  vec3 uvColor = vec3(vUv, 1.0);

  vec3 mixedColor = mix(blackColor, uvColor, strength);

  gl_FragColor = vec4(mixedColor, 1.0);

  // -------------------------------------------


  // black and white version
  // gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}