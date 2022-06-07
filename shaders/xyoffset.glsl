vec2 brickTile( vec2 _st, float _zoom){
    _st *= zoom;
    
    // this is where the offset happens
    _st.x += step(1, mod(_st.y, 2.0)) * 0.5;

    return fract(_st);
}

float box( vec2 _st, vec2 _size){
    _size = vec2(0.5)-_size*0.5;
    vec2 uv  = smoothstep(_size, _size+vec2(1e-4), _st);
    uv *= smoothstep(_size, _size+vec2(1e-4), vec2(1.0)-_st);
    return uv.x*uv.y;
}

void machygraph_main( out vec4 color, in vec3 c, in vec2 t){
    t *= 1.7777;

}