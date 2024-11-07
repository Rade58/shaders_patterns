# Shaders - patterns: Workshop

## uv attribute

If we are observing threeJS plane, a **uv** attribute containes coordinates that
go from:

- 0.0 to 1.0 over x axis

  and from

- 0.0 to 1.0 over y axis

Which is not hard to imagine

When we use these coordinates as a values in `gl_FragColor` vector4 instance, **IT WILL PRODUCE COLOR MIX IN DIRECTIONS DEPENDING OF YOUR CHOICE OF UV COORDIANTES, AND FROM AND FROM RGB ARGUMENTS OF VECTOR 4 TWO WHOOM WE ARE PASSING MENTIONED COORDINATES**

This is not hard to see when you try passing uv coordinates as a arguments when creating vector 4 instance that is gl_FragColor

## When trying to practice at first try to eliminate one color by adding 0.0 as an argument to rgb

for other values try to use uv coordinates

you will maybe understand and see effect of it, much easier
