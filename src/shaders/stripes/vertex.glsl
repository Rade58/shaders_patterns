uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

 
// 
attribute vec2 uv;

varying vec2 vUv;
//


attribute vec3 position;



void main(){
 
  vec4 modelPosition = modelMatrix * vec4(position, 1.0);



  vec4 viewPosition = viewMatrix * modelPosition;

  vec4 projectedPosition = projectionMatrix * viewPosition;


  gl_Position = projectedPosition;

  // first thing we did is sending uv coordinates
  // because we will need them in fragment shader
  
  vUv = uv;
}