# Shaders - patterns: Workshop

## uv attribute

Key to remeber:

UV coordinates across a mesh/quad are automatically interpolated between vertices by the GPU.

in contrast if you would use just random defined float, that float would be the same for every shader program and his usage in building `gl_FragColor` value would produce something even, ann even mix between red green and blue; **you wouldn't have diferent color segments**

If we are observing segment that is getting painted, a **uv** attribute containes coordinates that
go from:

- 0.0 to 1.0 over x axis

  and from

- 0.0 to 1.0 over y axis

**But have in mind that you have bunch of values between, let's say 0.1 and 0.2, for exapmle: 0.12, 0.1456 and so on**

So fragment shader is getting executed for each of the value, or we can say that GPU will call our fragment shader for every value he would imagine, and more value the best. With more value we have more color nuances, which builds a better image. **PROGRAM IS RUN FOR EACH PIXEL THAT CAN BE FOUND IN BETWEEN VERTICES**

Which is not hard to imagine

![uv coords](/images/Screenshot%20from%202024-11-08%2020-01-04.png)

When we use these coordinates as a values in `gl_FragColor` vector4 instance, **IT WILL PRODUCE COLOR MIX IN DIRECTIONS DEPENDING OF YOUR CHOICE OF UV COORDIANTES, AND IN MIX DEPENDING OF RGB ARGUMENTS OF VECTOR 4 TO WHOOM WE ARE PASSING MENTIONED COORDINATES; AND ONE PROGRAM WILL JUST JUST ONE PIXEL OF THE SPACE FORMED IN BETWEEN VERTICES**

This is not hard to imagine when you try passing uv coordinates as a arguments when creating vector 4 instance that is gl_FragColor

## When trying to practice at first, try to eliminate one color by adding 0.0 as an argument to rgb; set blue to be 0.0

and for other two rgb values try to use uv coordinates

you will maybe have better understanding when you see the produced effect

# Something I noticed

When Setting blue to be 0.0, and using uv coords for the rest of the colors, you'll create som famous combination people tend to use in testing for games

since we used x and y, color mixing will go diagonally on the plane

green will be on the left top, and red will be on the right bottom

```glsl
gl_FragColor = vec4(vUv, 0.0, 1.0);
```

we can invert this by changing places of coordinates, since above, vUv is the same as vUv.xy

Here we can inert it to be vUv.yx which is esencially a new vector two: vec2(vUv.y, vUv.x)

```glsl
gl_FragColor = vec4(vUv.yx, 0.0, 1.0);
```

## Inversion can be done by substracting from 1.0

These two are same

```
gl_FragColor = vec4(vUv.yx, 0.0, 1.0);
```

```
gl_FragColor = vec4(1.0 - vUv.xy, 0.0, 1.0);
```

# Modulo

The `mod` function in GLSL (including Three.js shaders) is similar to the modulo operator in other programming languages. Let me explain how it works:

The mod function takes two arguments:

```glsl
float mod(float x, float y)
vec2 mod(vec2 x, vec2 y)  // Also works with vectors
vec3 mod(vec3 x, vec3 y)
vec4 mod(vec4 x, vec4 y)
```

Arguments:

1. `x`: The dividend (number being divided)
2. `y`: The divisor (number we're dividing by)

The function returns the remainder of x/y, where the result has the same sign as y. The mathematical formula is:

```
mod(x,y) = x - y * floor(x/y)
```

Common uses in shaders:

1. Creating repeating patterns:

```glsl
float pattern = mod(uv.x, 0.1); // Repeats every 0.1 units
```

2. Wrapping values within a range:

```glsl
float wrapped = mod(value, 1.0); // Keeps value between 0 and 1
```

3. Creating grid effects:

```glsl
vec2 grid = mod(uv * 10.0, 1.0); // Creates a 10x10 grid
```

Visual effects it can produce:

- Repeating stripes or patterns
- Tiling textures
- Circular/radial patterns when used with angle calculations
- Grid-based effects
- Looping animations

# About `step` function

The `step` function in GLSL (used in Three.js fragment shaders) takes two arguments:

```glsl
float step(float edge, float x)
vec2 step(vec2 edge, vec2 x)   // Also works with vectors
vec3 step(vec3 edge, vec3 x)
vec4 step(vec4 edge, vec4 x)
```

Arguments:

1. `edge`: The threshold value
2. `x`: The value to test

The function returns:

- 0.0 if x < edge
- 1.0 if x >= edge

It's essentially creating a hard cutoff/threshold, like this:

```glsl
// These are equivalent:
float result = step(0.5, x);

// Same as writing:
float result = (x < 0.5) ? 0.0 : 1.0;
```

Common uses:

1. Creating sharp edges:

```glsl
float line = step(0.5, uv.x); // Creates vertical line at 0.5
```

2. Making binary patterns:

```glsl
float pattern = step(0.5, mod(uv.x * 10.0, 1.0)); // Creates stripes
```

3. Masking:

```glsl
float mask = step(0.1, distance(uv, center)); // Creates circular mask
```

The step function is particularly useful for creating hard transitions and sharp edges in shaders, as opposed to smooth gradients.
