import UIKit

// MARK: - Error Handling

// create an enum with error values
enum DivisionError: Error {

  case dividedByZero
}

// create a throwing function using throws keyword
func division(numerator: Int, denominator: Int) throws {

  // throw error if divide by 0
  if denominator == 0 {
    throw DivisionError.dividedByZero
  }
    
  else {
    let result = numerator / denominator
    print(result)
  }
}

// call throwing function from do block
do {
  try division(numerator: 10, denominator: 0)
  print("Valid Division")
}

// catch error if function throws an error
catch DivisionError.dividedByZero {
  print("Error: Denominator cannot be 0")
}


// MARK: - Disable Error Handling

enum DivisionErrors: Error {
  
  case dividedByZero
}

func divisions(numerator: Int, denominator: Int) throws {
  if denominator == 0 {
    throw DivisionErrors.dividedByZero
  }
    
  else {
    let result = numerator / denominator
    print("Result:", result)
  }
}

// disable error handling
try! divisions(numerator: 10, denominator: 5)

