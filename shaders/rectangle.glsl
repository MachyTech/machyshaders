// Rectangle
// we want to paint everything except the first and last columns and rows
// pseudo code:
// if ( (X GREATER THAN 1) AND (Y GREATER THAN 1) )
//      paint white
// else
//      paint black

void machygraph_main(out vec4 color, in vec3 c, in vec2 t){
    t.x *= 1.7777;
    
    // each result will return 1.0 (white) or 0.0 (black)
    float left = step(-0.5, t.x);
    float bottom = step(0.2, t.y);
    float right = step(0.2, 1-t.x);
    float top = step(0.2, 1-t.y);

    // The multiplication of left*bottom will be similar to the logical AND
    c = vec3 ( left * bottom * right * top);

    color = vec4(c, 1.0f);
}