//
//  binarySearch.swift
//  Swift Algorithms
//
//  Created by Dulio Denis on 11/12/16.
//  Copyright © 2016 Dulio Denis. All rights reserved.
//

// ABOUT
// This is a Swift implementation of a binary search algorithm.
// PROBLEM
// Given a sorted array of 10 numbers return true if a given value is found
// in the array. Otherwise, return false.

func linearSearch(match: Int, numbers: [Int]) -> Bool {
  for value in numbers {
    if value == match { return true }
  }
  return false
}

func binarySearch(match: Int, numbers: [Int]) -> Bool {
  var leftIndex = 0
  var rightIndex = numbers.count - 1

  while leftIndex <= rightIndex {
    let middleIndex = (leftIndex + rightIndex) / 2
    let middleValue = numbers[middleIndex]

    if match == middleValue {
      return true
    }

    if match < middleValue {
      rightIndex = middleIndex - 1
    }

    if match > middleValue {
      leftIndex = middleIndex + 1
    }
  }
  return false
}

var numbers:[Int] = [9, 12, 24, 73, 112, 141, 183, 283, 339, 414]
print(numbers)

// linear search = O(n)

var answer = linearSearch(match: 111, numbers: numbers)
print("Linear: its \(answer) that 111 is in the array")

answer = linearSearch(match: 112, numbers: numbers)
print("Linear: but its \(answer) that 112 is in the array")

// binary search = O(log n)
answer = binarySearch(match: 112, numbers: numbers)
print("Binary: its \(answer) that 112 is in the array")

answer = binarySearch(match: 9, numbers: numbers)
print("Binary: and its \(answer) that 9 is in the array")

answer = binarySearch(match: 283, numbers: numbers)
print("Binary: and its \(answer) that 283 is in the array")

answer = binarySearch(match: 284, numbers: numbers)
print("Binary: but its \(answer) that 284 is in the array")
