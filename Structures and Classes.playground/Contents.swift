import UIKit

// MARK: - Class


// define a class
class Bicycle {

// define two properties
var name = ""
var gears = 0
}

// create instance of Person
var bicycle1 = Bicycle()

// access properties and assign new values
bicycle1.gears = 11
bicycle1.name = "Mountain Bike"

print("Name: \(bicycle1.name), Gears: \( bicycle1.gears) ")


// define a class
class Employee {

// define a property
var employeeID = 0
}

// MARK: - Create Multiple Objects of Class

// create two objects of the Employee class
var employee1 = Employee()
var employee2 = Employee()

// access property using employee1
employee1.employeeID = 1001
print("Employee ID: \(employee1.employeeID)")

// access properties using employee2
employee2.employeeID = 1002
print("Employee ID: \(employee2.employeeID)")

// MARK: -  Function Inside Swift Class

// create a class
class Room {

  var length = 0.0
  var breadth = 0.0

  // method to calculate area
  func calculateArea() {
    print("Area of Room =", length * breadth)
  }
}

  // create object of Room class
  var studyRoom = Room()

  // assign values to all the properties
  studyRoom.length = 42.5
  studyRoom.breadth = 30.8

  // access method inside class
  studyRoom.calculateArea()


// MARK: - Swift Initializer

class Bike {

  // properties with no default values
  var name: String
  var gear: Int

  // assign value using initializer
  init(name: String, gear: Int){
    self.name = name
    self.gear = gear
  }
}

// object of Person with custom initializer
var bike1 = Bike(name: "BMX Bike", gear: 2)

print("Name: \(bike1.name) and Gear: \(bike1.gear)")


// MARK: - Struct & Class
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width)")
// Prints "The width of someResolution is 0"

print("The width of someVideoMode is \(someVideoMode.resolution.width)")
// Prints "The width of someVideoMode is 0"

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
// Prints "The width of someVideoMode is now 1280"

let vga = Resolution(width: 640, height: 480)

// MARK: - Enum

enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)") // Prints "The current direction is north"
print("The remembered direction is \(rememberedDirection)")
// Prints "The remembered direction is west"

