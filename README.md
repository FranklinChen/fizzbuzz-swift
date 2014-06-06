## Swift version of my Scala code for "Exploring type-directed test-driven development: a case study using FizzBuzz"

This is a tested and runnable Swift version of my original Scala code for a talk. Please see my Scala repository for the [article and slides and other supporting information](https://github.com/franklinchen/talk-on-type-directed-tdd-using-fizzbuzz).

### Notes

The Swift compiler is currently acting strangely. I encounter two behaviors that I consider bugs:

- Complaining incorrectly about a non-exhaustive pattern match when in fact I am checking each of 4 cases of a pair of Booleans.
- Requiring a label in a call of a function. No idea why.

