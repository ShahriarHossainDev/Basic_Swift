import UIKit

// MARK: - Closures

// declare a closure
var greet = {
    print("Hello, World!")
}

// call the closure
greet()

// MARK: - Closure Parameters

// closure that accepts one parameter
let greetUser = { (name: String)  in
    print("Hey there, \(name).")
}

// closure call
greetUser("Delilah")

// MARK: - Closure That Returns Value

// closure definition
var findSquare = { (num: Int) -> (Int) in
    let square = num * num
    return square
}

// closure call
var result = findSquare(3)

print("Square:",result)


// MARK: - Closure as function parameter

// define a function and pass closure
func grabLunch(search: ()->()) {
    print("Let's go out for lunch")
    
    // closure call
    search()
}

// pass closure as a parameter
grabLunch(search: {
    print("Alfredo's Pizza: 2 miles away")
})

// MARK: - Trailing Closure

func grabLunch(message: String, search: ()->()) {
    print(message)
    search()
}

// use of trailing closure
grabLunch(message:"Let's go out for lunch")  {
    print("Alfredo's Pizza: 2 miles away")
}

// MARK: - Autoclosure

// define a function with automatic closure
func display(greet: @autoclosure () -> ()) {
    greet()
}

// pass closure without {}
display(greet: print("Hello World!"))
