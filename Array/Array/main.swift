//
//  main.swift
//  Array
//
//  Created by lialong on 22/03/2022.
//

import Foundation

print("Hello, World!")

/// copy and write

/// Each array has an independent value that includes the values of all of its
/// elements. For simple types such as integers and other structures, this
/// means that when you change a value in one array, the value of that element
/// does not change in any copies of the array. For example:

var numbers = [1, 2, 3, 4, 5]
var numbersCopy = numbers
numbers[0] = 100
print(numbers)
// Prints "[100, 2, 3, 4, 5]"
print(numbersCopy)
// Prints "[1, 2, 3, 4, 5]"


/// If the elements in an array are instances of a class, the semantics are the
/// same, though they might appear different at first. In this case, the
/// values stored in the array are references to objects that live outside the
/// array. If you change a reference to an object in one array, only that
/// array has a reference to the new object. However, if two arrays contain
/// references to the same object, you can observe changes to that object's
/// properties from both arrays. For example:

// An integer type with reference semantics
class IntegerReference {
    var value = 10
}
var firstIntegers = [IntegerReference(), IntegerReference()]
var secondIntegers = firstIntegers
print(firstIntegers)
print(secondIntegers)

// Modifications to an instance are visible from either array
firstIntegers[0].value = 100
print(secondIntegers[0].value)
// Prints "100"

// Replacements, additions, and removals are still visible
// only in the modified array
firstIntegers[0] = IntegerReference()
print(firstIntegers[0].value)
// Prints "10"
print(secondIntegers[0].value)
// Prints "100"

print("***")

struct IntegerReference2 {
    var value = 10
}
var firstIntegers2 = [IntegerReference2(), IntegerReference2()]

var secondIntegers2 = firstIntegers2

print(firstIntegers2[0].value)
print(secondIntegers2[0].value)

firstIntegers2[0].value = 100
print(firstIntegers2[0].value)
print(secondIntegers2[0].value)

var numbers2: [Int] = [3, 4 , 6]
if let firstNumber = numbers2.first {
    print(firstNumber)
    let number = numbers2.index(0, offsetBy: 2)
    print(number)
    print(numbers2[number])
} else {
    print(numbers2)
}

