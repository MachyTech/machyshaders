#define PI 3.14159265359
#define TWO_PI 6.28318530718

float plot(vec2 st, float pct){
  return  smoothstep( pct-0.02, pct, st.y) -
          smoothstep( pct, pct+0.02, st.y);
}

void draw_triangle(out vec3 c, in vec2 t){
    float d = 0.0;
    // Number of sides of your shape
    int N = 3;
    // Angle and radius from the current pixel
    float a = atan(t.x, t.y)+PI;
    float r = TWO_PI/float(N);
    // Shaping function that modulate the distance
    d = cos(floor(.5+a/r)*r-a)*length(t);
    vec3 c_d = mix(vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 0.0), smoothstep(.4, .41, d+0.1));
    vec3 c_e = mix(vec3(1.0, 0.0, 0.0), vec3(0.0, 0.0, 0.0), smoothstep(.4, .41, d));
    c = c_e-c_d;
    // c = vec3(fract(d*10.0));
    // float pct = plot(t, d);
    // c = vec3(0.0, 0.0, 0.0)+pct*vec3(0.0, 1.0, 0.0);
}

void machygraph_main(out vec4 color, in vec3 c, in vec2 t){
    //t.x = fract(2*t.x);
    //t.x -= 0.5;
    t.x *= 1.7777;
    //t.y = 2*t.y;
    draw_triangle(c, t-0.2);
    color = vec4(c, 1.0f);
}