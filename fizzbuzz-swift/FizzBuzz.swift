//
//  FizzBuzz.swift
//  fizzbuzz-swift
//
//  Created by Franklin Chen on 6/6/14.
//  Copyright (c) 2014 Franklin Chen. All rights reserved.
//

struct FizzBuzz {
    typealias Evaluator = Int -> String
    
    typealias Config = (Int, String)[]
    
    typealias Compiler = Config -> Evaluator
    
    typealias Rule = Int -> String?
    
    static let buildRule: ((Int, String)) -> Rule = {
        n, word in
        { i in
            if i % n == 0 {
                return word
            } else {
                return nil
            }
        }
    }
    
    static let addOption: (String?, String?) -> String? = {
        a1, a2 in
        switch (a1, a2) {
        case (let .Some(s1), .None):
            return .Some(s1)
        case (.None, let .Some(s2)):
            return .Some(s2)
        case (let .Some(s1), let .Some(s2)):
            return .Some(s1+s2)
        case (.None, .None):
            return .None
        }
    }
    
    static let compile: Compiler = { pairs in
        // Precompute, hence "compiler".
        let rules: Rule[] = pairs.map(buildRule)
    
        // Return an Evaluator.
        return { i in
            let wordOptions = rules.map { rule in rule(i) }
            let combinedOption = wordOptions.reduce(nil, addOption)
            if let combined = combinedOption {
                return combined
            } else {
                return String(i)
            }
        }
    }
 }
