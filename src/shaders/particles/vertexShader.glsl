uniform float time;
uniform float size;
varying vec2 vUv;
varying vec3 vPosition;
attribute float rands;
varying float vRand;
// float PI = 3.141592653589793238;
float PI = 3.1415926;

void main() {
  vUv = uv;
  vRand = floor(rands*5.0);
  vec4 mvPosition = modelViewMatrix * vec4( position, 1.0 );
  gl_PointSize = 1000. * ( 1.0 / - mvPosition.z );
  gl_PointSize = vRand*3.0*size;
  gl_Position = projectionMatrix * mvPosition;
}