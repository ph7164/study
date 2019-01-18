// 클로저 이해하기

// 중첩 함수와 실행 컨텍스트

func getPower(food:Int)->Int{
    var stored = 100
    
    func calcPower(foodAmount:Int)->Int{
        stored += (foodAmount*10)
        return stored
    }
    
    let power = calcPower(foodAmount:food)
    
    return power
}

var result = getPower(food:10)
print("getPower 결과 : \(result)")

result = getPower(food:20)
print("getPower 결과 : \(result)")


// 일반적인 의미의 클로저
func getPowerFunc() -> ((Int)->Int){
    var stored = 100
    func calcPower(foodAmount:Int)->Int{
        stored += (foodAmount*10)
        return stored
    }
    return calcPower
}

var powerFunc = getPowerFunc()
var result2 = powerFunc(10)
print("powerFunc 결과 : \(result2)")


result2 = powerFunc(20)
print("powerFunc 결과 : \(result2)")  // stored 값이 증가된 채로 유지되기 때문


// 스위프트의 클로저

// 함수의 이름을 없앤, 중괄호로 코드 블록을 만들어 하나의 객체로 다루는 것.

func doCalc(first a:Int, second b:Int, _ calc:(Int,Int)->Int) -> Int{
    let output = calc(a,b)
    return output
}

func add(a:Int, b:Int)->Int{
    return a+b
}

var result3 = doCalc(first:10, second:10, add)
print("add를 파라미터로 전달한 결과 : \(result3)")


var result4 = doCalc(first:10,
                     second:10,
                     {(a:Int, b:Int)->Int in       // 파라미터 자료형 생략 가능 (a,b)->Int
                        return a+b
                        })
print("클로저 표현식을 파라미터로 전달한 결과 : \(result4)")


var result5 = doCalc(first:10,
                     second:10,
                     {(a, b)->Int in a+b}      // return 키워드 생략 가능
                    )
print("클로저 표현식의 구현 코드가 반환용 한 줄인 경우 : \(result5)")


var result6 = doCalc(first:10,
                     second:10,
                     {$0+$1}                   // 파라미터 선언부분 생략 가능
                    )
print("클로저 표현식의 파라미터를 선언없이 직접 참조한 경우 : \(result6)")


var result7 = doCalc(first:10, second:10) {$0 + $1}
print("클로저 표현식을 파라미터 외부에 넣은 경우 : \(result7)")


// 클로저를 변수에 할당하거나 함수에서 반환하기

let show = {()->() in        // 반환 자료형 () Void로 바꿀 수 있음.
    print("show함수 호출")
}
show()

({ () -> Void in
    print("즉시 실행 함수 호출")
})()

let show2 : Void = ({ () -> Void in
    print("즉시 실행 함수 호출")
})()

print("show2 : \(show2)")

func getCalc(index:Int)->((Int, Int)->Int)?{
    if index == 1{
        return { (a:Int, b:Int)->Int in
            return a+b
        }
    } else{
        return nil
    }
}

let add2 = getCalc(index:1)!
var result8 = add2(20,20)
print("결과 : \(result8)")


// Swift study 06

class Dog{
    var name:String?
    var age:Int?
    
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
    func walk(food:Int, distance:(Int)->Void){
        distance(food*10)
    }
}

var dog1 = Dog(name:"미미", age:1)
let food = 10
dog1.walk(food:food, distance:{
    (result:Int)->Void in
    print("걸어간 거리 : \(result)")
})
