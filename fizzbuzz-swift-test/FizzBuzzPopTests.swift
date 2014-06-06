//
//  FizzBuzzPopTests.swift
//  fizzbuzz-swift
//
//  Created by Franklin Chen on 6/6/14.
//  Copyright (c) 2014 Franklin Chen. All rights reserved.
//

import XCTest

class FizzBuzzPopTests: XCTestCase {
    func testDivideNone() {
        XCTAssertEqual(Defaults.fizzBuzzPopper(2), "2")
    }

    func testDivideFirstAndThird() {
        XCTAssertEqual(Defaults.fizzBuzzPopper(21), "FizzPop")
    }
    
    func testDivideFirstOnly() {
        XCTAssertEqual(Defaults.fizzBuzzPopper(9), "Fizz")
    }
    
    func testDivideThirdOnly() {
        XCTAssertEqual(Defaults.fizzBuzzPopper(7), "Pop")
    }
    
    func testDivideSecondAndThird() {
        XCTAssertEqual(Defaults.fizzBuzzPopper(35), "BuzzPop")
    }
    
    // TODO No property-based testing frameworks yet for Swift?
}
