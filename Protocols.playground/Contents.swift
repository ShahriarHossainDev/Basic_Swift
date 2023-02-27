import UIKit

// MARK: - Protocol

protocol Greet {
    
    // blueprint of property
    var name: String { get }
    
    // blueprint of a method
    func message()
}

// conform class to Greet protocol
class Employee: Greet {
    
    // implementation of property
    var name = "Perry"
    
    // implementation of method
    func message() {
        print("Good Morning", name)
    }
}

var employee1 = Employee()
employee1.message()


// MARK: - Swift Protocol To Calculate Area

protocol Polygon {
    
    func getArea(length: Int, breadth: Int)
}

// conform the Polygon protocol
class Rectangle: Polygon {
    
    // implementation of method
    func getArea(length: Int, breadth: Int) {
        print("Area of the rectangle:", length * breadth)
    }
}

// create an object
var r1 = Rectangle()

r1.getArea(length:5, breadth: 6)


// MARK: -  Conforming Multiple Protocols

// create Sum protocol
protocol Sum {
    
    func addition()
}

// create Multiplication protocol
protocol Multiplication {
    
    func product()
}

// conform class to two protocols
class Calculate: Sum, Multiplication {
    
    var num1 = 0
    var num2 = 0
    
    func addition () {
        let result1 = num1 + num2
        print("Sum:", result1)
    }
    
    func product () {
        let result2 = num1 * num2
        print("Product:", result2)
    }
    
}

// create an object
var calc1 = Calculate()

// assign values to properties
calc1.num1 = 5
calc1.num2 = 10

// access methods
calc1.addition()
calc1.product()


// MARK: - Protocol Inheritance

protocol Car {
    var colorOptions: Int { get }
}

// inherit Car protocol
protocol Brand: Car {
    var name: String { get }
}

class Mercedes: Brand {
    
    // must implement properties of both protocols
    var name: String = ""
    var colorOptions: Int = 0
}

var car1 = Mercedes()
car1.name = "Mercedes AMG"
car1.colorOptions = 4

print("Name:", car1.name)
print("Color Options:", car1.colorOptions)
