//
//  DriverTests.swift
//  fizzbuzz-swift
//
//  Created by Franklin Chen on 6/6/14.
//  Copyright (c) 2014 Franklin Chen. All rights reserved.
//

import XCTest

class DriverTests: XCTestCase {
    func test1to16() {
        let expected: [String] = [
            "1", "2", "Fizz", "4", "Buzz", "Fizz",
            "7", "8", "Fizz", "Buzz", "11", "Fizz",
            "13", "14", "FizzBuzz", "16"
        ]
        // TODO Why label? Why XCTAssertEqual did not work?
        XCTAssert(Driver.runToSeq(1, 16) == expected)
    }
}
