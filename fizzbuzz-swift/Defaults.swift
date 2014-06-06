//
//  Defaults.swift
//  fizzbuzz-swift
//
//  Created by Franklin Chen on 6/6/14.
//  Copyright (c) 2014 Franklin Chen. All rights reserved.
//

struct Defaults {
    static let fizzBuzzerConfig: FizzBuzz.Config =
        [(3, "Fizz"), (5, "Buzz")]

    static let fizzBuzzer: FizzBuzz.Evaluator =
        FizzBuzz.compile(fizzBuzzerConfig)

    static let fizzBuzzPopperConfig: FizzBuzz.Config =
        [(3, "Fizz"), (5, "Buzz"), (7, "Pop")]
    
    static let fizzBuzzPopper: FizzBuzz.Evaluator =
        FizzBuzz.compile(fizzBuzzPopperConfig)
    
    static let oldFizzBuzzer: FizzBuzz.Evaluator = { i in
        switch (i % 3 == 0, i % 5 == 0) {
        case (true,  false): return "Fizz"
        case (false, true):  return "Buzz"
        case (true,  true):  return "FizzBuzz"
        case (false, false): return String(i)
        default: return "Compiler bug: complained Switch must be exhaustive" // TODO
        }
    }
}