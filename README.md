# Representing Complex Coordinates

This repository takes an example from the course 15-312 Principles of
Programming Languages at CMU and implements it.

## Background

Whenever we have certain *classes* of data for which multiple *methods* are
defined on that data, we can choose between two different representations:

- a "class based" representation, where adding another implementation of the
  operations is easy, but adding an extra operation requires updating every
  class

- a "method based" representation, where adding another method on the data is
  easy, but adding another case requires updating all the existing methods


## Complex Coordinate Example

The example from the course is that of coordinates in the complex plane.

We can represent coordinates with either:

- a cartesian `x` and `y` point
- a polar `radius` and `theta`

On these points, we're going to consider doing two operatios:

- computing the absolute distance from the origin to the point
- computing which quadrant a given point lies in


## Implementation

The class-based and method-based representations are implemented in
[ComplexTC.hs](src/ComplexTC.hs) and [ComplexADT.hs](src/ComplexADT.hs).

Compare them side-by-side; notice the trade offs in each implementation.


## Testing

This project uses stack. To build it, clone the repo then:

```
stack build
```

To run the tests, run

```
stack test
```

## License

[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](https://jez.io/MIT-LICENSE.txt)
