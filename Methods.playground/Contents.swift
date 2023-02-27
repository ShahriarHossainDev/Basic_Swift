import UIKit

// MARK: - Swift Methods

class Person {
    
    // define a method
    func greet() {
        print("Hey there!")
    }
}

var nick = Person()

// call method
nick.greet()


// MARK: - Calculate Area and Volume using Swift Methods

// create a class
class Hall {
    
    var length = 0.0
    var breadth = 0.0
    var height = 0.0
    
    // method to calculate area
    func calculateArea() {
        print("Area of Hall =", length * breadth)
    }
    
    // method to calculate volume
    func calculateVolume() {
        print("Volume of Hall =", length * breadth * height)
    }
}

// create object of Hall class
var hall1 = Hall()

hall1.length = 42.5
hall1.breadth = 30.8
hall1.height = 45.2

// call calculateArea() method
hall1.calculateArea()

// call calculateVolume() method
hall1.calculateVolume()


// MARK: - static Methods

class Calculator {
    
    // non-static method
    func multiply(num1: Int, num2: Int) -> Int {
        return num1 * num2
    }
    
    // static method
    static func add(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
}

// create an instance of the Calculator class
var obj = Calculator()

// call static method
var result2 =  Calculator.add(num1: 2, num2: 3)
print("2 + 3 =", result2)

// call non-static method
var result1 = obj.multiply(num1:2,num2:2)
print("2 * 2 =", result1)

// MARK: - Swift self property

class Marks {
    
    var physics = 0
    
    func checkEligibility(physics: Int) {
        
        // using self property
        if (self.physics < physics) {
            print("Not Eligible for admission")
        }
        
        else {
            print("Eligible for admission")
        }
    }
}

var student1 = Marks()
student1.physics = 28
student1.checkEligibility(physics: 50)


// MARK: - Modifying Value Types from Method

struct Employee {
    var salary = 0
    
    // define mutating function
    mutating func salaryIncrement(increase: Int) {
        
        // modify salary property
        salary = salary + increase
        print("Increased Salary:",salary)
    }
}

var employee1 = Employee()
employee1.salary = 20000
employee1.salaryIncrement(increase: 5000)
