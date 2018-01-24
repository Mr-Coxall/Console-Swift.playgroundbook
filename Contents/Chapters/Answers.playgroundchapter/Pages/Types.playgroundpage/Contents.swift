//#-code-completion(identifier, hide, setupLiveView())
//#-hidden-code
import Foundation
//#-end-hidden-code
//#-editable-code Tap to enter code
// 1. Ask for a date
print("What is your birthdate?")
let birthdate = askForDate("Birthdate")

// 2. Ask for a number
print("What is your favorite number?")
let number = askForNumber("Number")

// 3. Ask for a choice from a set of options
print("What is your favorite color?")
let color = askForChoice("Color", options: ["Blue", "Green", "Orange", "Purple", "Red", "Yellow"])

//#-end-editable-code
