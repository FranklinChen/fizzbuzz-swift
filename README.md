## Swift version of my Scala code for "Exploring type-directed test-driven development: a case study using FizzBuzz"

This is a tested and runnable Swift version of my original Scala code for a talk. Please see my Scala repository for the [article and slides and other supporting information](https://github.com/franklinchen/talk-on-type-directed-tdd-using-fizzbuzz).

### Limitations compared to the Scala version

#### Compiler notes

The Swift compiler is currently acting strangely. I encounter two behaviors that I consider bugs:

- Complaining incorrectly about a non-exhaustive pattern match when in fact I am checking each of 4 cases of a pair of Booleans.
- Requiring a label in a call of a function. No idea why.

#### Swift needs a property-based testing framework

Hopefully someone will write a property-based testing framework similar to [ScalaCheck](http://scalacheck.org/) soon. This was actually a huge part of the talk and code; the Swift code here is only a translation of the final Scala code.

#### Swift needs a validation library

Interestingly, Swift does not have exceptions, which means the quick and dirty validation I stuck into the Scala code is impossible. Instead, someone should write for Swift the equivalent of [Scalaz](https://github.com/scalaz/scalaz)'s type-based [validation library](http://eed3si9n.com/learning-scalaz/Validation.html).
