import UIKit

// MARK: - Properties

class Person {
    
    // define two properties
    var name: String = ""
    var age: Int = 0
}

var person1 = Person()

// assign values to properties
person1.name = "Kevin"
person1.age = 42

// access properties
print("Name:", person1.name)
print("Age:", person1.age)


// MARK: - Swift Computed Property

class Calculators {
    
    // define two stored properties
    var num1: Int = 0
    var num2: Int = 0
    
    // define one computed property
    var sum: Int {
        
        // calculate value
        num1 + num2
    }
}

var objc = Calculators()
objc.num1 = 11
objc.num2 = 12

// read value of computed property
print("Sum:", objc.sum)


// MARK: - Getters And Setters for Computed Properties

class Calculator {
    var num1: Int = 0
    var num2: Int = 0
    
    // create computed property
    var sum: Int {
        
        // retrieve value
        get {
            num1 + num2
        }
        
        // set new value to num1 and num2
        set(modify) {
            num1 = (modify + 10)
            num2 = (modify + 20)
        }
    }
}

var obj = Calculator()
obj.num1 = 20
obj.num2 = 50

// get value
print("Get value:", obj.sum)

// provide value to modify
obj.sum = 5

print("New num1 value:", obj.num1)
print("New num2 value:", obj.num2)


// MARK: - static Property

class University {
    
    // static property
    static var name: String = ""
    
    // non-static property
    var founded: Int = 0
}

// create an object of University class
var objA = University()

// assign value to static property
University.name = "Kathmandu University"
print(University.name)

// assign value to non-static property
objA.founded = 1991
print(objA.founded)

