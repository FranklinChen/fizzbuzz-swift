//
//  Driver.swift
//  fizzbuzz-swift
//
//  Created by Franklin Chen on 6/6/14.
//  Copyright (c) 2014 Franklin Chen. All rights reserved.
//

struct Driver {
    static func runToSeq(i: Int, j: Int) -> [String] {
        return Array(i...j).map(Defaults.fizzBuzzer)
    }
}