
float circle(in vec2 _st, in float _radius ){
    vec2 dist = _st-vec2(0.5);
    return 1. - smoothstep(_radius - (_radius*0.01),
                        _radius+(_radius*0.01), 
                        dot(dist, dist)*4 );
}

void machygraph_main(out vec4 color, in vec3 c, in vec2 t){
    t.x *= 1.77777;
    c = vec3(circle(vec2(t.x+0.5, t.y+0.5), 0.9));
    color = vec4(c, 1.0f);
}