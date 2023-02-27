import UIKit

// MARK: - Array

// an array of integer type
var numbers : [Int] = [2, 4, 6, 8]
print("Array: \(numbers)")

var numbers_1 = [2, 4, 6, 8]
print("Array: \(numbers_1)")

var languages = ["Swift", "Java", "C++"]

// access element at index 0
print(languages[0])   // Swift

// access element at index 2
print(languages[2])   // C++

var numbers_2 = [21, 34, 54, 12]

print("Before Append: \(numbers_2)")

// using append method
numbers_2.append(32)

print("After Append: \(numbers_2)")


var primeNumbers = [2, 3, 5]
print("Array1: \(primeNumbers)")

var evenNumbers = [4, 6, 8]
print("Array2: \(evenNumbers)")

// join two arrays
primeNumbers.append(contentsOf: evenNumbers)

print("Array after append: \(primeNumbers)")


var numbers_3 = [21, 34, 54, 12]
print("Before Insert: \(numbers_3)")

numbers_3.insert(32, at: 1)
print("After insert: \(numbers_3)")

//Modify the Elements of an Array
var dailyActivities = ["Eat","Repeat"]
print("Initial Array: \(dailyActivities)")

// change element at index 1
dailyActivities[1] = "Sleep"

print("Updated Array:  \(dailyActivities)")

// Remove an Element from an Array
var languages_1 = ["Swift","Java","Python"]

print("Initial Array: \(languages_1)")

// remove element at index 1
let removedValue = languages_1.remove(at: 1)

print("Updated Array: \(languages_1)")
print("Removed value: \(removedValue)")

//Looping Through Array
// an array of fruits
let fruits = ["Apple", "Peach", "Mango"]

// for loop to iterate over array
for fruit in fruits {
    print(fruit)
}

// Find Number of Array Elements
let evenNumbers_1 = [2,4,6,8]
print("Array: \(evenNumbers_1)")

// find number of elements
print("Total Elements: \(evenNumbers_1.count)")

//Check if an Array is Empty

// array with elements
let numbers_4 = [21, 33, 59, 17]
print("Numbers: \(numbers_4)")

// check if numbers is empty
var  result = numbers_4.isEmpty
print("Is numbers empty? : \(result)")

// array without elements
let evenNumbers_2 = [Int]()
print("Even Numbers: \(evenNumbers_2)")

// check if evenNumbers is empty
result = evenNumbers_2.isEmpty
print("Is evenNumbers empty? : \(result)")

// array with String and integer data
var address: [Any] = ["Scranton", 570]

print(address)

var someStrs = [String]()

someStrs.append("Apple")
someStrs.append("Amazon")
someStrs += ["Google"]
for item in someStrs {
    print(item)
}

// MARK: - Set

var studentId: Set = [112,114,115,113,118,117,116]
print("Students IS: \(studentId)")

// Add Elements to a Set
var employeeID: Set = [23,34,54,63]
print("Initial Set: \(employeeID)")

// Add Elements to a Set
employeeID.insert(32)
print("Update Set: \(employeeID)")

// Remove Elements to a Set
employeeID.remove(23)
print("Update Set: \(employeeID)")

print("Sorted Set: \(employeeID.sorted())")
print("RandomElement Set: \(String(describing: employeeID.randomElement()!))")
print("Contains: \(employeeID.contains(54))")
print("Total Elements: \(employeeID.count)")

// Iterate Over Set
let fruitss: Set = ["Apple","Peach", "Mango"]

for fruit in fruitss {
    print(fruit)
}

// Union of Two Sets
// first set
let setA: Set = [1, 3, 5]
print("Set A: ", setA)

// second set
let setB: Set = [0, 2, 4]
print("Set B: ", setB)

// perform union operation
print("Union: ", setA.union(setB))

// Intersection between Two Sets
print("Intersection: ", setA.intersection(setB))

// Difference between Two Sets
// perform subtraction operation
print("Subtraction: ", setA.subtracting(setB))

// perform symmetric difference operation
print("Symmetric Difference: ", setA.symmetricDifference(setB))

// first set
let setA_: Set = [1, 2, 3, 5, 4]
print("Set A: ",  setA_)

// second set
let setB_: Set = [1, 2]
print("Set B: ",  setB_)

// check if setB is subset of setA or not
print("Subset: ", setB_.isSubset(of: setA_))

var emptySet = Set<Int>()
print("Set:", emptySet)

// MARK: - Dictionary


var capitalCity_ = ["Nepal": "Kathmandu", "Italy": "Rome", "England": "London"]
print(capitalCity_)


var capitalCity = ["Nepal": "Kathmandu", "England": "London"]
print("Initial Dictionary: ",capitalCity)

// Add Elements to a Dictionary
capitalCity["Japan"] = "Tokyo"

print("Updated Dictionary: ",capitalCity)
print(capitalCity["Japan"]!)

var studentID = [111: "Eric", 112: "Kyle", 113: "Butters"]
print("Initial Dictionary: ", studentID)
// Change Value of Dictionary
studentID[112] = "Stan"
print("Updated Dictionary: ", studentID)

// Access Elements from Dictionary

var cities = ["Nepal":"Kathmandu", "China":"Beijing", "Japan":"Tokyo"]

print("Dictionary: ", cities)

// cities.keys return all keys of cities
var countryName  = Array(cities.keys)

print("Keys: ", countryName)
// cities.values return all values of cities
print("Values: ", Array(cities.values))

var studentID_1 = [111: "Eric", 112: "Kyle", 113: "Butters"]

print(studentID.count) // Find Number of Dictionary Elements

print("Initial Dictionary: ", studentID_1)

var removedValues  = studentID_1.removeValue(forKey: 112)

print("Dictionary After removeValue(): ", studentID_1)

var classification = ["Fruit": "Apple", "Vegetable": "Broccoli", "Beverage": "Milk"]

print("Keys: Values")
// Iterate Over a Dictionary
for (key,value) in classification {
    print("\(key): \(value)")
}

// Create an Empty Dictionary
var emptyDictionary =  [Int: String]()
print("Empty Dictionary: ",emptyDictionary)
