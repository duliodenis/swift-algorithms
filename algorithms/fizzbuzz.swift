//
//  fizzbuzz.swift
//  Swift Algorithms
//
//  Created by Dulio Denis on 11/12/16.
//  Copyright © 2016 Dulio Denis. All rights reserved.
//

// ABOUT
// This is a Swift implementation of the FizzBuzz Algorithm.
// PROBLEM
// A number is Fizz if its divisible by three,
// A number is Buzz if its divisible by five,
// And a number is FizzBuzz if its divisible by both three and five.

var numbers:[Int] = []

// create an array of the first 100 numbers
for i in 1...100 {
  numbers.append(i)
}

// check they are all there
print(numbers)

// FizzBuzz
for value in numbers {
  if ((value % 3 == 0) && (value % 5 == 0)) { print("\(value) is FizzBuzz") }
  else if (value % 3 == 0) { print("\(value) is Fizz") }
  else if (value % 5 == 0) { print("\(value) is Buzz") }
  else { print(value) }
}
