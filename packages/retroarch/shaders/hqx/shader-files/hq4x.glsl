// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _texture_size1;
float _placeholder22;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
};
out_vertex _ret_0;
vec4 _r0009;
vec4 _v0009;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    _v0009 = vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w));
    _r0009 = _v0009.x*MVPMatrix[0];
    _r0009 = _r0009 + _v0009.y*MVPMatrix[1];
    _r0009 = _r0009 + _v0009.z*MVPMatrix[2];
    _r0009 = _r0009 + _v0009.w*MVPMatrix[3];
    _OUT._position1 = vec4(float(_r0009.x), float(_r0009.y), float(_r0009.z), float(_r0009.w));
    _ret_0._position1 = _OUT._position1;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    gl_Position = _OUT._position1;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
COMPAT_VARYING     vec2 _tex_coord;
struct orig {
    vec2 _tex_coord;
    vec2 _texture_size;
float _placeholder31;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
};
vec4 _ret_0;
float _TMP10;
vec4 _TMP8;
float _TMP7;
vec2 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec2 _TMP0;
uniform sampler2D Texture;
orig _ORIG1;
input_dummy _IN1;
uniform sampler2D LUT;
vec2 _x0019;
vec2 _val0021;
vec2 _a0021;
vec2 _c0025;
vec2 _c0027;
vec2 _c0029;
vec2 _x0033;
vec2 _c0037;
vec3 _r0043;
vec4 _v0043;
COMPAT_VARYING vec4 TEX0;
 
uniform COMPAT_PRECISION vec2 OrigTextureSize;
uniform sampler2D OrigTexture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _fp;
    vec2 _quad;
    vec2 _ps;
    vec3 _pixels[4];
    vec2 _index;
    vec4 _weights;
    float _sum;
    vec3 _TMP17[4];
    _x0019 = TEX0.xy*TextureSize;
    _fp = fract(_x0019);
    _a0021 = -5.00000000E-01 + _fp;
    _val0021 = vec2(float((_a0021.x > 0.00000000E+00)), float((_a0021.y > 0.00000000E+00)));
    _TMP0 = _val0021 - vec2(float((_a0021.x < 0.00000000E+00)), float((_a0021.y < 0.00000000E+00)));
    _quad = vec2(float(_TMP0.x), float(_TMP0.y));
    _ps = 1.00000000E+00/OrigTextureSize;
    _TMP1 = COMPAT_TEXTURE(OrigTexture, TEX0.xy);
    _c0025 = TEX0.xy + vec2(_ps.x, _ps.y)*vec2(float(_quad.x), float(_quad.y));
    _TMP2 = COMPAT_TEXTURE(OrigTexture, _c0025);
    _c0027 = TEX0.xy + vec2(_ps.x, 0.00000000E+00)*vec2(float(_quad.x), float(_quad.y));
    _TMP3 = COMPAT_TEXTURE(OrigTexture, _c0027);
    _c0029 = TEX0.xy + vec2(0.00000000E+00, _ps.y)*vec2(float(_quad.x), float(_quad.y));
    _TMP4 = COMPAT_TEXTURE(OrigTexture, _c0029);
    _TMP17[0] = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP17[1] = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP17[2] = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP17[3] = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _pixels[0] = vec3(float(_TMP17[0].x), float(_TMP17[0].y), float(_TMP17[0].z));
    _pixels[1] = vec3(float(_TMP17[1].x), float(_TMP17[1].y), float(_TMP17[1].z));
    _pixels[2] = vec3(float(_TMP17[2].x), float(_TMP17[2].y), float(_TMP17[2].z));
    _pixels[3] = vec3(float(_TMP17[3].x), float(_TMP17[3].y), float(_TMP17[3].z));
    _TMP5 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _index = vec2(float((_TMP5.xy*vec2( 2.55000000E+02, 2.40000000E+02)).x), float((_TMP5.xy*vec2( 2.55000000E+02, 2.40000000E+02)).y));
    _x0033 = _fp*4.00000000E+00;
    _TMP6 = floor(_x0033);
    _TMP7 = dot(_TMP6, vec2( 1.00000000E+00, 4.00000000E+00));
    _index.y = float((float(_index.y) + _TMP7));
    _c0037 = vec2(float((_index*vec2( 3.90625000E-03, 3.90625000E-03) + vec2( 1.95312500E-03, 1.95312500E-03)).x), float((_index*vec2( 3.90625000E-03, 3.90625000E-03) + vec2( 1.95312500E-03, 1.95312500E-03)).y));
    _TMP8 = COMPAT_TEXTURE(LUT, _c0037);
    _weights = vec4(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z), float(_TMP8.w));
    _TMP10 = dot(vec4(float(_weights.x), float(_weights.y), float(_weights.z), float(_weights.w)), vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _sum = float(_TMP10);
    _v0043 = vec4(float((_weights/_sum).x), float((_weights/_sum).y), float((_weights/_sum).z), float((_weights/_sum).w));
    _r0043 = _v0043.x*_pixels[0];
    _r0043 = _r0043 + _v0043.y*_pixels[1];
    _r0043 = _r0043 + _v0043.z*_pixels[2];
    _r0043 = _r0043 + _v0043.w*_pixels[3];
    _ret_0 = vec4(_r0043.x, _r0043.y, _r0043.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
