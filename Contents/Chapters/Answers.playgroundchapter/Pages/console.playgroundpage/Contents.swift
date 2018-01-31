//#-code-completion(identifier, hide, setupLiveView())
//#-hidden-code
// Created by Patrick Coxall on 2018-01-23.
// patrick.coxall@ocsb.ca
// 
//#-end-hidden-code
//#-editable-code Tap to enter code
//
//  console.swift
//  input_test
//
//  Created by Patrick Coxall on 2018-01-23.
//  This playground takes Apple's "Answers" playground and removes Ask and Show
//  It replaces then with readLine() and print().
//  This way all code in the playground can also be used in Swift console, includind on Linux and Windows
//  See: https://swift.org/
//
//  Currently readLine() with its optional parameter set to False is not supported
//  readLine(strippingNewline: Bool = default) -> String?
//  See: https://developer.apple.com/documentation/swift/1641199-readline
//
//  Also if you do not unwrap the value returned for readLine, no error is given just nothing shows up
//  If someone could fix that to give the same error as in the console, that would be great. :)
//

import Foundation

print("Hello, World!")

let response = readLine()
print(response!)

//#-end-editable-code
