import UIKit

enum DaysOfWeek: Int, CaseIterable {case saturday = 0, sunday, monday, tuesday, wednesday, thursday, friday}

var square = 0
var dice = 0
var today = DaysOfWeek.thursday
let final_score = 25
var board = [Int](repeating: 0, count: final_score + 1)
//board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
//board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
//
//while square < final_score {
//    dice = Int.random(in: 1..<7)
//    square += dice
//    if square < final_score {
//        square += board[square]
//    }
//
//    print(square)
//}
//
//print("Game Over")

func greet(person: String) -> String {
    return "Hello \(person)"
}
print(greet(person: "Anas"))

switch today {
case .friday:
    print("It's the weekend, congrats")
case .thursday:
    print("Tomorrow is Friday!")
default:
    print("It's a normal day")
}

for day in DaysOfWeek.allCases {
    print("\(day) is the \(day.rawValue)")
}

var someNumber = 5
switch someNumber {
case let x where x == 5:
    print(x)
default:
    print("Default case here")
}

if let eighthDay = DaysOfWeek(rawValue: 8) {
    print("Woah, there is actually an eighth day and it's \(eighthDay)")
}else {
    print("Oh well, at least we tried")
}
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

var number1 = ArithmeticExpression.number(5)
var number2 = ArithmeticExpression.number(10)

var multiply = ArithmeticExpression.multiplication(number1, number2)
print(evaluate(multiply))
