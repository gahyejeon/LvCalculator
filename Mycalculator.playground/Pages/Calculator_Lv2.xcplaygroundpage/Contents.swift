class Calculator {
    func calculate(operate: String, firstNumber: Double, secondNumber:Double ) -> Double {
        switch operate {
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
        case "%":
            if secondNumber == 0 {
                print("나머지 없음")
            }
            return firstNumber.truncatingRemainder(dividingBy: secondNumber)
            //truncatingRemainder(dividingBu:) 메서드 사용
        default:
            print("지원하지 않는 연산자")
            return 0
        }

    }
}

let calculator = Calculator()

let addResult = calculator.calculate(operate: "+", firstNumber: 5, secondNumber: 2)
let subtractResult = calculator.calculate(operate: "-", firstNumber: 14, secondNumber: 9)
let multiplyResult = calculator.calculate(operate: "*", firstNumber: 4, secondNumber: 17)
let divideResult = calculator.calculate(operate: "/", firstNumber: 7, secondNumber: 6)
let remainderResult = calculator.calculate(operate: "%", firstNumber: 16, secondNumber: 3)

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
print("remainderResult : \(remainderResult)")



