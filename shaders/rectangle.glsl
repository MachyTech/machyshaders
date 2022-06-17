// Rectangle
// we want to paint everything except the first and last columns and rows
// pseudo code:
// if ( (X GREATER THAN 1) AND (Y GREATER THAN 1) )
//      paint white
// else
//      paint black

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
    t.x *= u_resolution.x/u_resolution.y;
    t = rotate2d( sin(u_time)*PI ) * t;
    //t.x += cos(u_frame);
    //t.y += sin(u_frame);
    draw_rectangle(c, t+0.5);
    color = vec4(c, 1.0f);
}