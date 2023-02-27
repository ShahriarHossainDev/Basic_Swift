import UIKit

var greeting = "Hello, playground"

var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

/// Printing Constants and Variables

print("The current value of friendlyWelcome is \(friendlyWelcome)")

// MARK: - Semicolons
let cat = "🐱";
print(cat)

// MARK: - Semicolons

let minValue = UInt8.min
let maxValue = UInt8.max

// MARK: - Type Safety and Type Inference

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

let meaningOfLife = 42
let pi = 3.14159
let anotherPi = 3 + 0.14159

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// MARK: - Numeric Type Conversion

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

//Integer and Floating-Point Conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi1 = Double(three) + pointOneFourOneFiveNine

//Type Aliases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

//Booleans
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

// Tuples
// MARK: - Tuples
let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")


let flight = ("LAX", 747)
print("We're flying to \(flight.0) in a \(flight.1)")

let a = ("AMS", 737)
let b = ("LAX", 737)

a == b // Is "false", tuples are equatable because String and Int are

let c = ("AMS", "A330-800")

//Decomposing Tuples
let flight1 = (airport: "LAX", airplane: 747, heading: 270)
print("We're flying a \(flight1.airplane) towards \(flight1.airport) with heading \(flight1.heading) degrees.")


let (airport, _, heading) = ("LAX", 747, 270)
print(airport)

func getStatusCode() -> (Int, String) {
    return (404, "Not Found")
}

let (code, text) = getStatusCode()
print("The request returned with status code \(code) and said: '\(text)'")


func split(name: String) -> (firstName: String, lastName: String) {
    let split = name.components(separatedBy: " ")
    return (split[0], split[1])
}

let parts = split(name: "Paul Hudson")
parts.0
parts.1
parts.firstName
parts.lastName


// MARK: - Optionals

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)


var myString: String? = nil

if myString != nil {
    print(myString!)
} else {
   print("myString has nil value")
}

// Forced Unwrapping
var myString1: String?

myString1 = "Hello, Swift 4!"

if myString1 != nil {
   print(myString1) // Force-unwrap the value to avoid this warning
} else {
   print("myString has nil value")
}

//Automatic Unwrapping
var myString2: String!
myString2 = "Hello, Swift 4!"

if myString2 != nil {
print(myString2) //Coercion of implicitly unwrappable value of type 'String?' to 'Any' does not unwrap optional
} else {
   print("myString has nil value")
}

//Optional Binding
var myString3:String?
myString3 = "Hello, Swift 4!"

if let yourString = myString3 {
   print("Your string has - \(yourString)")
} else {
   print("Your string does not have a value")
}

let someValue:Int? = 5
print(someValue)
print(someValue!)

let someValue1:Int! = 5
print(someValue1)

//Optional handling with if else statement
var someValue2:Int?
var someAnotherValue1:Int! = 0
        
if someValue2 != nil {
    print("It has some value \(someValue2!)")
} else {
    print("doesn't contain value")
}
        
if someAnotherValue1 != nil {
    print("It has some value \(someAnotherValue1!)")
} else {
    print("doesn't contain value")
}

//Optional handling using if let statement
var someValue3:Int?
var someAnotherValue2:Int! = 0
       
if let temp = someValue3 {
    print("It has some value \(temp)")
} else {
    print("doesn't contain value")
}
        
if let temp = someAnotherValue2 {
    print("It has some value \(temp)")
} else {
    print("doesn't contain value")
}

//Optional handling using guard-let
func testFunction() {
    let someValue:Int? = 5
    guard let temp = someValue else {
        return
    }
    print("It has some value \(temp)")
}

testFunction()

//Optional handling using nil-coalescing operator
var someValue4:Int!
let defaultValue = 5
let unwrappedValue:Int = someValue4 ?? defaultValue
print(unwrappedValue)

var someValue_5:Int? = 10
let defaultValue_1 = 5
let unwrappedValue_1:Int = someValue_5 ?? defaultValue_1
print(unwrappedValue_1)

//MARK: - Logical AND Operator

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// MARK: - Logical OR Operator

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// MARK: - Combining Logical Operators

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// MARK: - Explicit Parentheses
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
