precision mediump float;
// precision highp float;


varying vec2 vUv;


uniform vec3 uColor;


varying float vElevation;


uniform sampler2D uTexture;


varying vec3 vPosition;

void main() {




  vec4 textureColor = texture2D(uTexture, vUv);

 

  textureColor.rgb *= vElevation * 2.0 + 0.5;


  gl_FragColor = textureColor;

}