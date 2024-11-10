# Shaders - patterns: Workshop

## uv attribute

If we are observing threeJS plane, a **uv** attribute containes coordinates that
go from:

- 0.0 to 1.0 over x axis

  and from

- 0.0 to 1.0 over y axis

Which is not hard to imagine

![uv coords](/images/Screenshot%20from%202024-11-08%2020-01-04.png)

When we use these coordinates as a values in `gl_FragColor` vector4 instance, **IT WILL PRODUCE COLOR MIX IN DIRECTIONS DEPENDING OF YOUR CHOICE OF UV COORDIANTES, AND IN MIX DEPENDING OF RGB ARGUMENTS OF VECTOR 4 TO WHOOM WE ARE PASSING MENTIONED COORDINATES**

This is not hard to see when you try passing uv coordinates as a arguments when creating vector 4 instance that is gl_FragColor

fragment shader program is executed for every pixel, not for some kind of space between vertices likw I imagined before, in previous lessons wher we didn't place accent on fragment shader. it is for every pixel indeed

## When trying to practice at first, try to eliminate one color by adding 0.0 as an argument to rgb

and for other two rgb values try to use uv coordinates

you will maybe have better understanding when you see the produced effect

# Something I noticed

For these I set blue to be 0.0, so it would be easier to notice things

This is the one famous combination people tend to use in testing for games

since we used x and y color mixing will go diagonally on the plane

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
