import UIKit

// define enum
enum Season: CaseIterable {
  
  // define enum values
  case spring, summer, autumn, winter
}

// create enum variable
var currentSeason: Season

// assign value to enum variable
currentSeason = Season.summer

print("Current Season:", currentSeason)


// MARK: - Swift enum With Switch Statement

enum PizzaSize {
  case small, medium, large
}

var size = PizzaSize.medium

switch(size) {
  case .small:
    print("I ordered a small size pizza.")

  case .medium:
    print("I ordered a medium size pizza.")

   case .large:
     print("I ordered a large size pizza.");
}

// MARK: - Iterate Over enum Cases

// for loop to iterate over all cases
for currentSeason in Season.allCases {
  print(currentSeason)
}

// MARK: - enums With Raw Values

enum Size : Int {
  case small = 10
  case medium = 12
  case large = 14
}

// access raw value of python case
var result = Size.small.rawValue
print(result)


// MARK: - enum Associated Values

enum Laptop {

  // associate string value
  case name(String)

  // associate integer value
  case price (Int)
}

// pass string value to name
var brand = Laptop.name("Razer")
print(brand)

// pass integer value to price
var offer = Laptop.price(1599)
print(offer)


// MARK: - Swift enum with Associated Values

enum Distance {
  
  // associate value
  case km(String)
  case miles(String)
}

// pass string value to km
var dist1 = Distance.km("Metric System")
print(dist1)

// pass string value to miles
var dist2 = Distance.miles("Imperial System")
print(dist2)

// MARK: - Associate Multiple Values

enum Marks {

 // associate multiple Double values
case gpa(Double, Double, Double)

// associate multiple String values
case grade(String, String, String)
}

// pass three Double values to gpa
var marks1 = Marks.gpa(3.6, 2.9, 3.8)
print(marks1)

// pass three string values to grade
var marks2 = Marks.grade("A", "B", "C")
print(marks2)


// MARK: - Named Associated Values

enum Pizza {

  // named associated value
  case small (inches: Int)
  case medium (inches: Int)
  case large (inches: Int)
}

// pass value using provided names
var pizza1 = Pizza.medium(inches: 12)
print(pizza1)

// MARK: - enum Associated Values and Switch Statement

enum Mercedes {

 case sedan(height: Double)
 case suv(height: Double)
 case roadster(height: Double)
}

var choice = Mercedes.suv(height: 5.4)

switch(choice) {
 case let .sedan(height):
   print("Height:", height)

 case let .suv(height):
   print("Height:", height)

 case let .roadster(height):
   print("Height:", height)
}
