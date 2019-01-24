// 파운데이션 프레임워크 : 데이터 처리, 네트워크 처리, 파일 처리와 같은 필수 기능을 제공

import Foundation

class Person : NSObject{  // 객체비교, 셀렉터 등을 제공
    var name : String
    var age : Int
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
    override func isEqual(_ object: Any?) -> Bool {  // 두 객체를 비교할 내용을 좀 더 구체적으로 지정가능.
        if let other = object as? Person{
            return self.name == other.name && self.age == other.age
        }
        return false
    }
}

let person1 = Person(name:"소녀시대", age:22)
let person2 = Person(name:"소녀시대", age:22)
let person3 = Person(name:"걸스데이", age:21)

if person1.isEqual(person2){
    print("person1과 person2는 같습니다.")
}

if person1 != person3{      // ===연산을 사용해도 동일한 결과.
    print("person1과 person3은 다릅니다.")
}


// 셀렉터 사용하기

// 셀렉터 : 함수를 식별하기 위해 만드는 정보

func show(){
    print("show 호출")
}

let method = Selector(("show"))

func show2(data:String){
    print("show2 호출 : \(data)")
}

let method2 = Selector(("show2:"))

func show3(data:String, name:String){
    print("show3 호출 : \(data), \(name)")
}

let method3 = Selector(("show3:name:"))


// 셀렉터로 메소드 구분하기

class Person2 : NSObject{
    var name : String
    var age : Int
    @objc init(name:String, age:Int){  // @objc : Objective-C 에서 호출할 수 있는 함수
        self.name=name
        self.age=age
    }
    @objc func greeting(message:String){
        print("\(name)에게 인사 : \(message)")
    }
}

let selector1 = #selector(Person2.greeting(message:))

let person4 = Person2(name:"소녀시대", age:22)
person4.responds(to:selector1)
person4.responds(to:#selector(Person2.greeting(message:)))

person4.responds(to:#selector(Person2.init(name:age:)))


// Quiz 38

class Dog : NSObject{
    var name : String
    var age : Int
    @objc init(name:String, age:Int){
        self.name=name
        self.age=age
    }
    @objc func walk(){
        print("강아지 \(name)이(가) 걸어감.")
    }
}

func checkDog(dog:Dog)->Bool{
    if(dog.responds(to:#selector(Dog.walk))){
        return true
    }
    else{
        return false
    }
}

var dog1:Dog = Dog(name:"미미", age:1)
print("강아지 객체에 walk 메소드가 있나? \(checkDog(dog:dog1))")
