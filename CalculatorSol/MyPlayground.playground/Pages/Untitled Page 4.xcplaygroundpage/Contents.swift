/// 더하기 '연산을 한다'
/// 빼기 '연산을 한다'
/// 곱하기 '연산을 한다'
/// 나누기 '연산을 한다'

class AbstractOperation {
    func operate(_ number1: Int, _ number2: Int) -> Double {
        return -1
    }
}

class AddOperation: AbstractOperation {
    override func operate(_ number1: Int, _ number2: Int) -> Double {
        Double(number1 + number2)
    }
}

class SubstractOperation: AbstractOperation {
    
    /**
     - parameters:
     - number1: 빼기 연산자의 왼쪽에 오는 수
     - number2: 빼기 연산자의 오른쪽에 오는 수
     */
    override func operate(_ number1: Int, _ number2: Int) -> Double {
        Double(number1 - number2)
    }
}

class MultiplyOperation: AbstractOperation {
    override func operate(_ number1: Int, _ number2: Int) -> Double {
        Double(number1 * number2)
    }
}

class DivideOperation: AbstractOperation {
    override func operate(_ number1: Int, _ number2: Int) -> Double {
        
        guard number2 != 0 else {
            return 0.0
        }
        return Double(number1) / Double(number2)  // 한줄이 아니라 return 작성해줘야 함
    }
}

class Calculator {
    var operation: AbstractOperation?
    
    func operate(_ number1: Int, _ number2: Int) -> Double {
        operation?.operate(number1, number2)
    }
}

enum OperatorType {
    case add
    case sustract
    case multiply
    case divide
}

let addOperation = AddOperation()
let substractOperation = SubstractOperation()
let multiplyOperation = MultiplyOperation()
let divideOperation = DivideOperation()

let calculator = Calculator() // 인스턴스 생성하여 변수에 할당

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
