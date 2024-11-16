// already defined with ShaderMaterial
// precision mediump float;


varying vec2 vUv;



// copied fron https://thebookofshaders.com/10
float random (vec2 st) {
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main() {

  
  // instead of this
  // float strength = length(vUv - 0.5);
  // we use     distance

  // second parameter is coordinate where we want center to be
  // so it's the distance between uv coordinate and the coordinate we picked
  // for us it happens that we wanted the center of plane, but we
  // can use any coordiantes we want for the second argument 

  float strength = distance(vUv, vec2(0.5, 0.5)); // since this is 0.5
                                                  // for both coords
                                                  // you could also write vec2(0.5)
                                                  // which is the same as vec2(0.5, 0.5)

 

  gl_FragColor = vec4(vec3(strength, strength, strength), 1.0);

}