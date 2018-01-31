# Console Swift Playground

This Playground let you write Swift Console code. 
All code is written in here will also work on swift running on Linux. 
print() and readLine() have been implimented to allow this.
Currently readLine() with its optional parameter set to False is not supported
  readLine(strippingNewline: Bool = default) -> String?
  See: https://developer.apple.com/documentation/swift/1641199-readline

Also if you do not unwrap the value returned for readLine, no error is given just nothing shows up
If someone could fix that to give the same error as in the console, that would be great. :)
