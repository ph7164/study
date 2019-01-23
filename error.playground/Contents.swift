// 예외 처리하기

// 오류 객체 만들어 던지기

protocol Calculator{
    func add(first a:Int, second b:Int) throws ->Int            // throws : 예외가 나올 수 있다.
    func subtract(first a:Int, second b:Int) throws ->Int
    func multiply(first a:Int, second b:Int) throws->Int
    func divide(first a:Int, second b:Int) throws->Int
}

enum CalculatorError : Error{
    case Unimplemented
    case Incorrect(reason:String)
}

class MyCalculator : Calculator{
    func add(first a:Int, second b:Int) throws->Int{
        return a+b
    }
    func subtract(first a:Int, second b:Int) throws->Int{
        throw CalculatorError.Unimplemented
    }
    func multiply(first a:Int, second b:Int) throws->Int{
        throw CalculatorError.Unimplemented   // 예외 상황을 알려주는 것은 함수에 값을 돌려주는 것보다 먼저 진행되기 때문에 return 없어도 됨.
    }
    func divide(first a:Int, second b:Int) throws->Int{
        if b==0{
            throw CalculatorError.Incorrect(reason:"두번째 파라미터 값이 0")
        } else{
            return a/b
        }
    }
}

var calc = MyCalculator()

do{
    let result1 = try calc.add(first:10, second:10)
    print("더하기 결과 : \(result1)")
    let result2 = try calc.subtract(first:20, second:10)
    print("빼기 결과 : \(result2)")
} catch CalculatorError.Unimplemented{   // catch : 예외가 발생했을 때 처리하는 코드
    print("구현되지 않음.")
} catch CalculatorError.Incorrect(let reason){
    print("Incorrect 오류 : \(reason)")
}

do{
    let result3 = try calc.divide(first:40, second:0)
    print("나누기 결과 : \(result3)")
} catch CalculatorError.Unimplemented{
    print("구현되지 않음")
} catch CalculatorError.Incorrect(let reason){
    print("Incorrect 오류 : \(reason)")
}


// 구조체로 오류 유형 만들기

struct CustomError : Error{
    var code : Int
    var message : String
}

func checkData() throws{
    throw CustomError(code:400, message:"데이터 오류 발생")
}

do{
    try checkData()
} catch let error where error is CustomError{  // error라는 상수로 오류 객체 바인딩.
    let errorInfo = error as! CustomError
    print("에러 : \(errorInfo.code), \(errorInfo.message)")
} catch let error{
    print("기타 에러")
}


// 에러가 발생하더라도 반드시 실행되어야 하는 부분이 있는 경우

struct CustomError2 : Error{
    var code:Int
    var message:String
}

func checkData2(data:Int) throws {
    defer{
        print("defer안에서 실행된 코드")
    }
    if data < 0{
        print("예외 던져주기 전에 실행된 코드")
        throw CustomError2(code:400, message:"데이터에서 오류")
    }
}

do{
    try checkData2(data:-10)
} catch let error2 where error2 is CustomError2{
    let errorInfo2 = error2 as! CustomError2
    print("오류 : \(errorInfo2.code), \(errorInfo2.message)")
} catch{
    print("기타오류")
}


// Quiz 35

class Person{
    var name : String
    var age : Int
    
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
    func walk(food:Int) throws {
        if food > 10{
            throw CustomError(code:400, message:"너무 많은 food 값")
        }
        print("사람 \(name)이(가) \(food*10)km 걸어감.")
    }
}

var person1:Person?=Person(name:"김현수", age:20)
do{
    try person1!.walk(food:5)
    try person1!.walk(food:20)
} catch let error3{
    let errorInfo3 = error3 as! CustomError
    print("예외 발생함 : \(errorInfo3.code), \(errorInfo3.message)")
}
