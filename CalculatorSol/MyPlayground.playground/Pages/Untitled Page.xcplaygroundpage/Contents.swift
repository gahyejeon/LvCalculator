
class Calculator {
    
    func add(_ number1: Int, _ number2: Int) -> Int {  //함수는 클로저의 한 종류 한줄짜리는 return 생략 가능
        number1 + number2
    }
    
    /**
     - parameters:
     - number1: 빼기 연산자의 왼쪽에 오는 수
     - number2: 빼기 연산자의 오른쪽에 오는 수
     */
    func minus(_ number1: Int, _ number2: Int) -> Int {
        number1 - number2
    }
    
    func multiply(_ number1: Int, _ number2: Int) -> Int {
        number1 * number2
    }
    
    func divide(_ number1: Int, _ number2: Int) -> Double {
        
        guard number2 != 0 else {
            return 0.0
        }
        return Double(number1) / Double(number2)  // 한줄이 아니라 return 작성해줘야 함
    }
}

let calculator = Calculator() // 인스턴스 생성하여 변수에 할당

calculator.add(3, 1)
calculator.minus(3, 1)
calculator.multiply(1, 3)
calculator.divide(1, 3)
