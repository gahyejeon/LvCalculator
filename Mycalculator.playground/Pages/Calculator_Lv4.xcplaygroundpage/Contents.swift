
class AbstractOperation {
    func operate(_ firstNumber: Double, _ secondNumber: Double) -> Double {
        return -1
    }
}

// 더하기 클래스
class AddOperation: AbstractOperation {
    override func operate(_ firstNumber: Double, _ secondNumber: Double ) -> Double {
        return firstNumber + secondNumber
    }
}

// 빼기 클래스
class SubstractOperation: AbstractOperation {
    override func operate(_ firstNumber: Double, _ secondNumber: Double ) -> Double {
        return firstNumber - secondNumber
    }
}

// 곱하기 클래스
class MultiplyOperation: AbstractOperation {
    override func operate(_ firstNumber: Double, _ secondNumber: Double ) -> Double {
        return firstNumber * secondNumber
    }
}

// 나누기 클래스
class DivideOperation: AbstractOperation {
    override func operate(_ firstNumber: Double, _ secondNumber: Double ) -> Double {
        if secondNumber == 0 {
            print("나눌 수 없음.")
        }
        return firstNumber / secondNumber
    }
    
}

// 연산 클래스들 사용해서 Calculator 클래스와 관계 맺기
class Calculator {
    var operation: AbstractOperation?
    
    func operate(_ firstNumber: Double, _ secondNumber: Double
        ) -> Double {
        operation?.operate(firstNumber, secondNumber) ?? Double.nan
    }
}


let addOperation = AddOperation()
let substractOperation = SubstractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()

let calculator = Calculator(
    // 프로퍼티 초기화
)

/// 더하기
calculator.operation = addOperation
calculator.operate(1, 2)             //3

/// 빼기
calculator.operation = substractOperation
calculator.operate(3, 1)

/// 곱하기
calculator.operation = multiplyOperation
calculator.operate(3, 5)

/// 나누기
calculator.operation = divideOperation
calculator.operate(1, 3)


