// Distance fields ca be used to draw almost everything.
// Obviously the more complex a shape is, the more complicated its equation will be
// but once you have the formula to make distance fields of a particular sape,
// it is very easy to combine and/or apply effects to it.

void machygraph_main(out vec4 color, in vec3 c, in vec2 t){
    t.x *= 1.77777;

    float d = 0.0;

    t += 0.5;
    t = t*2.-1.;

    // calculate the length to the position (.3, .3)
    d = length( abs(t)-.3 );
    color = vec4( vec3(fract(d*10.0)), 1.0 );
    // drawing with the distance fields
    // color = vec4(vec3(	 step(.3,d) ),1.0);
    // color = vec4(vec3( step(.3,d) * step(d,.4)),1.0);
    // color = vec4(vec3( smoothstep(.3, .4, d)*smoothstep(.6, .5, d)), 1.0);
}