// if we scale the normalized coordinate system up - lets say by three -
// we will get three sequences of linear interpolations between 0-1
// the first one between 0-1, the second one between 1-2, and third one between 2-3

float circle(in vec2 _st, in float _radius){
    vec2 l = _st-vec2(0.5);
    return 1.-smoothstep(_radius-(_radius*0.01),
                         _radius+(_radius*0.01),
                         dot(l,l)*4.0);
}

void machygraph_main(out vec4 color, in vec3 c, in vec2 t) {
    t.x *= 1.77777;

    // scale up the space by 3
    t *= 1.0;
    t = fract(t); // Wrap around 1.0

    // color = vec4(t, 0.0, 0.0);
    vec3 col = vec3(circle(t,0.5));

    color = vec4(col, 1.0);
}