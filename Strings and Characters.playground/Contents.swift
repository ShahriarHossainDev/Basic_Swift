import UIKit

// create character variable
var letter: Character = "H"
print(letter)  // H

var symbol: Character = "@"
print(symbol)  // @

// create string type variables
let names: String = "Swift"
print(names)

let message = "I love Swift."
print(message)

// String Operations
// Compare Two Strings

let str1 = "Hello, world!"
let str2 = "I love Swift."
let str3 = "Hello, world!"

// compare str1 and str2
print(str1 == str2)

// compare str1 and str3
print(str1 == str3)

// Join Two Strings
var greet = "Hello, "
let name = "Jack"

// using + operator
var result = greet + name
print(result)

//using =+ operator
greet +=  name
print(greet)

// Find Length of String
let messages = "Hello, World!"

// count length of a string
print(messages.count) // 13

// Escape Sequences
// use the escape character
var example = "This is \"String\" class"

print(example)
// Output: This is "String" class

// String Interpolation
let name_s = "Swift"

var message_s = "This is \(name_s) programming."
print(message_s)

// Swift Multiline String
// multiline string
var str: String = """
Swift is awesome
I love Swift
"""
print(str)

let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

print(quotation)


var varA = 20
let constA = 100
var varC:Float = 20.0

var stringA = "\(varA) times \(constA) is equal to \(varC * 100)"
print( stringA )

// String Length
var var_A = "Hello, Swift 4!"
print( "\(var_A), length is \((var_A.count))" )

// String Iterating
for chars in "ThisString" {
    print(chars, terminator: " ")
}

// Unicode Strings
var unicodeString = "Dog???"

print("UTF-8 Codes: ")
for code in unicodeString.utf8 {
    print("\(code) ")
}

print("\n")

print("UTF-16 Codes: ")
for code in unicodeString.utf16 {
    print("\(code) ")
}

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

// MARK: - Prefix and Suffix Equality

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]


var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")


var st = 4
var sr = 5

(st, sr) = (sr, st)

print("\(st)    \(sr)")
