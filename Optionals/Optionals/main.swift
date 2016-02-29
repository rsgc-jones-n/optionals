//
//  main.swift
//  Optionals
//
//  Created by Russell Gordon on 2016-02-28.
//  Copyright © 2016 Royal St. George's College. All rights reserved.

// Example #1 – As simple as it gets – get string input, no matter what it is
//              NOTE: No error checking is performed on input given
var month : String = ""     // Non-optional data type; will store the provided value eventually
// Prompt the user
print("What is the current month? ", terminator: "")
// Use optional binding to unwrap the optional String data type that is always returned
// from the readLine function (this function is what takes input from the user)
if let input = readLine(stripNewline: true) {
    month = input
}
// Print a response (with two line breaks at the end)
print("The month is \(month)", terminator: "\n\n")


// Example #2 – Ensure string input is given and not just an empty string
//
var name : String = ""      // Non-optional data type; will store the provided value eventually
repeat {
    // Prompt the user
    print("What is your name? ", terminator: "")
    // Unwrap the optional (readLine always returns an optional String data type)
    if let input = readLine(stripNewline: true) {
        // Check that the input is not just an empty string
        if input != "" {
            // Use this input, it's good
            name = input
        } else {
            // Tell the user what they need to do
            print("Please enter your name.")
        }
    }
} while name == ""  // Keep looping until proper input provided
// Greet the user (with two line breaks at the end)
print("Nice to meet you, \(name)", terminator: "\n\n")


// Example #3 – Get input and attempt to save it in an non-optional variable of type Int
//              NOTE: No error checking is performed on input given
var favourite : Int = 0     // Non-optional data type; will store the provided value eventually
// Prompt the user
print("What is your favourite positive integer? ", terminator: "")
// Use optional binding to unwrap the optional String data type that is always returned
// from the readLine function (this function is what takes input from the user)
if let input = readLine(stripNewline: true) {
    // We have a non-nil value, now to try to get it as an Int
    if let inputAsInteger = Int(input) {
        favourite = inputAsInteger
    }
}
// Print a response (with two line breaks at the end)
print("\(favourite) is your favourite integer??? Mine too!", terminator: "\n\n")


// Example #4 – Ensure input is given and can be used as an integer
//
var age : Int = 0      // Non-optional data type; will store the provided value eventually
repeat {
    // Prompt the user
    print("What is your age? ", terminator: "")
    // Unwrap the optional (readLine always returns an optional String data type)
    if let input = readLine(stripNewline: true) {
        // We have a non-nil value, now to try to get it as an Int
        if let inputAsInteger = Int(input) {
            // Use this input, it's good
            age = inputAsInteger
        } else {
            // Tell the user what they need to do
            print("Please enter an integer value for your age.")
        }
    }
} while age == 0  // Keep looping until proper input provided
// Print a response (with two line breaks at the end)
print("Your age is: \(age)", terminator: "\n\n")

// Exercise #1 - Use the code above as an exemplar.
//               Write code that will guarantee a non-integer value greater than 0 is obtained from the user
//
// Begin your code here... test that it works... comment it out when complete.


// Exercise #2 - Use the code above as an exemplar.
//               Write code that will guarantee an integer value between 0 and 100 inclusive is obtained from the user
//
// Begin your code here... test that it works... comment it out when complete.


// Exercise #3 - Use the code above as an exemplar.
//               Write code that will guarantee a string value of "Small", "Medium", or "Large" is obtained (but no other value)
//
// Begin your code here... test that it works... comment it out when complete.


// Exercise #4 - Use the code above as an exemplar.
//               Convert one of your programs (written in a playground earlier) to use a proper command line input model.
//
// Begin your code here... test that it works.
