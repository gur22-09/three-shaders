varying vec2 vUv;

void main() {
    // pattern 3
    // float strength = vUv.y;
    // gl_FragColor = vec4(vec3(strength), 1.0);

    // pattern 4
    // float strength = 1.0 - vUv.y;
    // gl_FragColor = vec4((vec3(strength)), 1.0);

    // pattern 5
    // float strength = vUv.y * 10.0;
    // gl_FragColor = vec4((vec3(strength)), 1.0);

    // pattern 6
    // float strength = mod(vUv.y * 10.0, 1.0);
    // gl_FragColor = vec4((vec3(strength)), 1.0);

    // pattern 7
    // float strength = mod(vUv.y * 10.0, 1.0);
    // strength = step(0.5, strength);
    // gl_FragColor = vec4((vec3(strength)), 1.0);

    // pattern 8
    // float strength = mod(vUv.x * 10.0, 1.0);
    // strength = step(0.8, strength);
    // gl_FragColor = vec4((vec3(strength)), 1.0);

    // pattern 9
      // pattern 8
    float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
    strength += step(0.8, mod(vUv.y * 10.0, 1.0));

    gl_FragColor = vec4((vec3(strength)), 1.0);
}