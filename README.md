## Swift version of my Scala code for "Exploring type-directed test-driven development: a case study using FizzBuzz"

[![Build Status](https://travis-ci.org/FranklinChen/fizzbuzz-swift.png)](https://travis-ci.org/FranklinChen/fizzbuzz-swift)

This is a Swift version of my original Scala code for a talk.

Please see my Scala repository for the [article and slides and other supporting information](https://github.com/franklinchen/talk-on-type-directed-tdd-using-fizzbuzz).

### Photo from the presentation

<a href="http://twitpic.com/e5o899" title=" @franklinchen&#039;s rule-based fizzbuzz compiler in #swiftl... on Twitpic"><img src="http://twitpic.com/show/thumb/e5o899.jpg" width="150" height="150" alt=" @franklinchen&#039;s rule-based fizzbuzz compiler in #swiftl... on Twitpic"></a>

(Note: the Xcode 6 beta 1 Swift array type syntax shown here was changed later by Apple for Xcode 6 beta 3.)

### System requirements

You need to be running Mac OS X and have Xcode installed.

### Coding style

For didactic purposes, to focus on functional programming, I presented code using first-class functions rather than the more idiomatic and realistic use of classes and protocols and methods. In real life, of course, I would use the host language's idiomatic features for maximum clarity and flexibility.

### Limitations compared to the Scala version

#### TODO Swift needs a property-based testing framework

Hopefully someone will write a property-based testing framework similar to [ScalaCheck](http://scalacheck.org/) soon. This was actually a huge part of the talk and code; the Swift code here is only a translation of the final Scala code.

##### (Update of over one year later)

[SwiftCheck](https://github.com/typelift/SwiftCheck) is a thing now. I will update my test code eventually.

#### TODO Swift needs a validation library

Interestingly, Swift does not have exceptions, which means the quick and dirty validation I stuck into the Scala code is impossible. Instead, someone should write for Swift the equivalent of [Scalaz](https://github.com/scalaz/scalaz)'s type-based [validation library](http://eed3si9n.com/learning-scalaz/Validation.html).

##### (Update of over one year later)

[Swiftz](https://github.com/typelift/Swiftz) exists now. I should use it.
