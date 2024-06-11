//import UIKit

//var greeting = "Hello, playground"

class Calculator {
    func calculate(operate: String, firstNumber: Double, secondNumber:Double ) -> Double {
        switch operate {     // operator 는 스위프트 예약어이므로 함수 매개변수 이름으로 사용할 수 없음.
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        case "*":
            return firstNumber * secondNumber
        case "/":
            if secondNumber == 0 {
                print("나눌 수 없음.")
            }
            return firstNumber / secondNumber
        default:
            print("지원하지 않는 연산자")
            return 0
        }

    }
}

let calculator = Calculator()

let addResult = calculator.calculate(operate: "+", firstNumber: 5, secondNumber: 2)
let substractResult = calculator.calculate(operate: "-", firstNumber: 14, secondNumber: 9)
let multiplyResult = calculator.calculate(operate: "*", firstNumber: 4, secondNumber: 17)
let divideResult = calculator.calculate(operate: "/", firstNumber: 7, secondNumber: 6)


print("addResult : \(addResult)")
print("substractResult : \(substractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
