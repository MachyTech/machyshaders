#define PI 3.14159265359
void draw_rectangle(out vec3 c, in vec2 t) 
{
    // each result will return 1.0 (white) or 0.0 (black)
    vec2 bl = step(vec2(0.2), t);
    vec2 tr = step(vec2(0.2), 1.0 - t);
    // The multiplication of left*bottom will be similar to the logical AND
    c = vec3 ( bl.x * bl.y * tr.x *tr.y );
}

mat2 rotate2d( float _angle){
    return mat2(cos(_angle), -sin(_angle), 
            sin(_angle), cos(_angle));
}

void machygraph_main(out vec4 color, in vec3 c, in vec2 t){
    //t.x *= u_tex0resolution.y/u_tex0resolution.x;
    //color = vec4(t.x, t.y, 0.0, 1.0);
    color = texture2D(u_tex0, t);
}