//
//  FizzBuzzTests.swift
//  fizzbuzz-swift
//
//  Created by Franklin Chen on 6/6/14.
//  Copyright (c) 2014 Franklin Chen. All rights reserved.
//

import XCTest

class FizzBuzzTests: XCTestCase {
    func testDivideBoth() {
        XCTAssertEqual(Defaults.fizzBuzzer(15), "FizzBuzz")
    }
    
    func testDivideSecondOnly() {
        XCTAssertEqual(Defaults.fizzBuzzer(20), "Buzz")
    }
    
    func testDivideFirstOnly() {
        XCTAssertEqual(Defaults.fizzBuzzer(6), "Fizz")
    }
    
    func testDivideNone() {
        XCTAssertEqual(Defaults.fizzBuzzer(17), "17")
    }

    // TODO No property-based testing frameworks yet for Swift?
}
