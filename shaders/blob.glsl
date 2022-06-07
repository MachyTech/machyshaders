void machygraph_main(out vec4 color, in vec3 c, in vec2 t) {
    float dx = t.x * 1.77777;
    float dy = t.y;
    float dist = sqrt(dx * dx + dy * dy);
    color = mix(vec4(1.0, 0.0, 0.0, 1.0) ,vec4(0.0, 0.0, 0.0, 1.0), smoothstep(0.69, 0.7, dist));
    // color = vec4(vec3(smoothstep(0.7, 0.7, dist)), 1.0);
}