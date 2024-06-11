


// 더하기 클래스
class AddOperation {
    func operate(firstNumber: Double, secondNumber: Double ) -> Double {
        return firstNumber + secondNumber
    }
}

// 빼기 클래스
class SubstractOperation {
    func operate(firstNumber: Double, secondNumber: Double ) -> Double {
        return firstNumber - secondNumber
    }
}

// 곱하기 클래스
class MultiplyOperation {
    func operate(firstNumber: Double, secondNumber: Double ) -> Double {
        return firstNumber * secondNumber
    }
}

// 나누기 클래스
class DivideOperation {
    func operate(firstNumber: Double, secondNumber: Double ) -> Double {
        if secondNumber == 0 {
            print("나눌 수 없음.")
        }
        return firstNumber / secondNumber
    }
    
}

// 연산 클래스들 사용해서 Calculator 클래스와 관계 맺기
class Calculator {
    let addOperation = AddOperation()
    let substractOperation = SubstractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    
    func calculate(operate: String, firstNumber: Double, secondNumber: Double
        ) -> Double {
        
        switch operate {
        case "+":
            return addOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return substractOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return multiplyOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return divideOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            print("지원하지 않는 연산자")
            return 0
        }
    }
}


let calculator = Calculator(
    // 프로퍼티 초기화
)
let addResult = calculator.calculate(operate: "+", firstNumber: 5, secondNumber: 2)  // 덧셈 연산
let substractResult = calculator.calculate(operate: "-", firstNumber: 14, secondNumber: 9)  // 뺄셈 연산
let multiplyResult = calculator.calculate(operate: "*", firstNumber: 4, secondNumber: 17)  // 곱셈 연산
let divideResult = calculator.calculate(operate: "/", firstNumber: 7, secondNumber: 6)   // 나눗셈 연산


print("addResult : \(addResult)")
print("substractResult : \(substractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")


