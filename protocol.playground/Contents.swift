// 프로토콜

// 클래스에 접근할 수 있는 메소드를 정하는 것.

class myCalculator : Calculator{
    func add(first a:Int, second b:Int)->Int{
        return a+b
    }
}

protocol Calculator{
    func add(first a:Int, second b:Int)->Int
}

var calculator : Calculator = myCalculator()
var result = calculator.add(first:10, second:10)  // Calculator 프로토콜에서 선언한 메소드만 호출 가능.
print("add 결과 : \(result)")

// 프로토콜도 자료형으로 사용 가능.


class FriendCalculator : Calculator{
    func add(first a:Int, second b:Int)->Int{
        print("friendcalculator에서 더하기 : \(a), \(b)")
        return a+b
    }
}

var calculator2 : Calculator = FriendCalculator()
var result2 = calculator2.add(first:10, second:10)
print("FriendCalculator 결과 : \(result2)")

/*
 프로토콜에 추가할 수 있는 것들
 
 1. 메소드 선언
 2. 타입 메소드 선언
 3. 초기화 메소드 선언
 4. 속성 선언(속성의 get, set 행위 선언)
 */

class MyCalculator2 : Calculator2{
    var owner=""
    
    static func getType()->String{
        return "계산기"
    }
    
    required init(owner:String){  // 클래스에서 init 함수 구현시 앞에 required 필요.
        self.owner=owner
    }
    
    func add(first a:Int, second b:Int)->Int{
        return a+b
    }
    var duration : Float{
        get{
            return 0
        }
        set{}
    }
}

protocol Calculator2{
    static func getType()->String
    init(owner:String)
    func add(first a:Int, second b:Int)->Int
    var duration : Float{get set}
}

var calculator3 : Calculator2 = MyCalculator2(owner:"소녀시대")
var result3 = calculator3.add(first:10, second:10)
print("add 결과 : \(result3)")


// 프로토콜의 상속

protocol Product{
    func getProductName()->String
}

protocol Calculator3 : Product{
    func add(first a:Int, second b:Int)->Int
}

class MyCalculator3 : Calculator3{
    func getProductName() -> String {
        return "내 계산기"
    }
    func add(first a:Int, second b:Int)->Int{
        return a+b
    }
}


// Quiz 33
class Person{
    var name:String?
    var mobile:String?
    
    init(name:String, mobile:String){
        self.name=name
        self.mobile=mobile
    }
}
protocol Thinkable{
    func think()
    init(name:String, mobile:String)
}

class Student : Person, Thinkable{
    override required init(name:String, mobile:String){
        super.init(name:name, mobile:mobile)
    }
    
    func think(){
        print("학생 \(self.name!)이(가) 생각합니다.")
    }
}

var student1:Thinkable = Student(name:"김현수", mobile:"010-1000-1000")
student1.think()


// Swift Study 07

class Dog{
    var name:String?
    var age:Int?
    
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
    func walk(food:Int)->Int{
        return food*10
    }
}

protocol Runnable{
    func run(food:Int)
}

class Puppy : Dog{
    override func walk(food:Int)->Int{
        return food*10
    }
    
    func run(food:Int){
        print("강아지 \(name!)이(가) 뛰어감")
    }
    
}

var dog1 : Dog = Dog(name:"미미", age:2)
var distance = dog1.walk(food:10)
print("걸어간 거리 : \(distance)")

var dog2 : Puppy = Puppy(name:"캔디", age:1)
dog2.run(food:10)
