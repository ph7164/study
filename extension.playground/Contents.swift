// 확장 사용하기

/*
 1. 계산 속성, 타입 계산 속성을 추가
 2. 인스턴스 메소드, 타입 메소드 추가
 3. 초기화 함수 추가
 4. 첨자(subscript) 설정
 5. 중첩타입 정의
 6. 프로토콜 구현
 */

class Person{
    var firstName : String!
    var lastName : String!
}

extension Person{
    //var mobile : String!  // 저장속성 추가 허용 안함.
    var name : String{
        get{
            return firstName + " " + lastName   // 계산 속성 추가
        }
    }
    func walk(){
        print("사람 \(name)이(가) 걸어감.")
    }
}

var person1 : Person = Person()
person1.firstName = "김"
person1.lastName = "준수"
print("person1의 이름 : \(person1.name)")

person1.walk()


class Person2{
    var name : String!
}

protocol Runnable{
    func run()
}

extension Person2 : Runnable{
    func run(){
        print("사람 \(name!)이(가) 뛰어감.")
    }
}

var person2 : Person2 = Person2()
person2.name = "김현수"
person2.run()


// Quiz 36

class Person3{
    var name : String!
    var age : Int!
}

class Student : Person3{
    func walk(){
        print("학생 \(name!)이(가) 걸어감.")
    }
}

extension Student{
    func think(){
        print("사람 \(name!)이(가) 생각함.")
    }
}

var student1 : Student = Student()
student1.name="김현수"
student1.age=20
student1.think()


// 서브 스크립트 사용하기

// 배열이나 딕셔너리에서 사용하는 인덱스 값을 다른 자료형에서도 사용할 수 있도록 만들어줌.

class Person4{
    var name : String!
    subscript(str:String)->Int{  // 소괄호 안의 자료형 : 대괄호 안에 넣는 값의 자료형, -> 뒤의 자료형 : 반환값의 자료형.
        get{
            print("사람 이름 : \(name)")
            return str.characters.count
        }
    }
}

var person4 : Person4 = Person4()
person4.name="강백호"
var count = person4["강백호"]
print("이름 문자열의 길이 : \(count)")


// Swift study 08

struct LimitedError : Error{
    var code : Int
    var message : String
}

class Dog{
    var name : String!
    var age : Int!
    
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
    func run(distance : Int) throws {
        if distance > 10{
            throw LimitedError(code:400, message:"너무 먼 거리")
        }
        print("걍아지 \(name)이(가) \(distance)km 달려갑니다.")
    }
}

var dog1:Dog = Dog(name:"미미", age:1)
do{
    try dog1.run(distance:8)
    try dog1.run(distance:12)
} catch let error{
    let errorInfo = error as! LimitedError
    print("예외 발생함 : \(errorInfo.code), \(errorInfo.message)")
}
