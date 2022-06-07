// we can draw shapes using polar cooridnates
// this technique is a little restrictive but very simple
// we simply change the radius of a circle depending on the angle to achieve different results

void machygraph_main(out vec4 color, in vec3 c, in vec2 t){
    t.x *= 1.77777;

    vec2 pos = vec2(0.5-t.x, 0.5-t.y);

    float r = length(pos)*2.0;
    float a = atan(pos.y, pos.x);

    float f = cos(a*3.);

    vec3 col = vec3(1.-smoothstep(f, f+0.02, r) );
    color = vec4(col, 1.0);
}