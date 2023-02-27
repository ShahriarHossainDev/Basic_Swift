import UIKit

// MARK: - For-In Loops

// for-in loop to iterate over the items in an array
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

// dictionary’s value
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

// for-in loops with numeric ranges
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// MARK: - While Loops

// Solve short problem 1
/// simple game of Snakes and Ladders
/// The rules of the game are as follows:
/// * The board has 25 squares, and the aim is to land on or beyond square 25.
/// * The player’s starting square is “square zero”, which is just off the bottom-left corner of the board.
/// * Each turn, you roll a six-sided dice and move by that number of squares, following the horizontal path indicated by the dotted arrow above.
/// * If your turn ends at the bottom of a ladder, you move up that ladder.
/// * If your turn ends at the head of a snake, you move down that snake.

var square = 0
var diceRoll = 0
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08


while square < finalSquare {
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        // if we're still on the board, move up or down for a snake or a ladder
        square += board[square]
    }
}
print("Game over!")
