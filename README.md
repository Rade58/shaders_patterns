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

Yes. But what is very hard is how to get wanted coloring effect you imagined

fragment shader program is executed for every pixel, not for some kind of space between vertices. it is for every pixel

## When trying to practice at first try to eliminate one color by adding 0.0 as an argument to rgb

for other values try to use uv coordinates

you will maybe have better understanding
