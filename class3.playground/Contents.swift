// Class 3

// 구조체 사용하기

struct Rectangle{
    var width = 0
    var height = 0
    
    func toString()->String{
        return "width : \(width), height : \(height)"
    }
}

var rect = Rectangle()
var rect2 : Rectangle = Rectangle(width:200, height:200)
var desc = rect2.toString()
print("rect2 : \(desc)")

// 구조체 : 값을 전달.   , 클래스 : 참조를 전달

var rect3 = rect2
rect2.width = 300   // rect2 값 변화
desc = rect2.toString()
print("rect2 : \(desc)")
desc = rect3.toString() // rect3 값은 변하지 않음
print("rect3 : \(desc)")


class Point{
    var x:Float = 0.0
    var y:Float = 0.0
    
    init(){
    }
    
    init(x:Float, y:Float){
        self.x = x
        self.y = y
    }
    func toString() -> String{
        return "점 x : \(x), y : \(y)"
    }
}

var pnt = Point()
var pnt2 : Point = Point(x:200.0, y:200.0)
desc = pnt2.toString()
print("pnt2 : \(desc)")

var pnt3 = pnt2
pnt2.x = 300.0    // pnt2 변화
desc = pnt2.toString()
print("pnt2 : \(desc)")
desc = pnt3.toString()
print("pnt3 : \(desc)") // pnt3도 같은 인스턴스 객체를 가리키고 있으므로 함께 변함

var pnt4 : Point = Point(x:200.0, y:200.0)
if pnt4 === pnt2{
    print("same")
} else{
    print("different")
}

if pnt3 === pnt2{
    print("same")
} else{
    print("different")
}

/* 구조체가 좋은 경우
 1. 여러개의 값을 하나로 묶어두고 싶을 때
 2. 새로운 틀을 정의하는데 기존 틀을 상속할 필요가 없을 때
 3. 하나로 묶어둔 데이터를 복사해서 만드는 것이 좋을 때
 */

// quiz 21

struct Dog{
    var name : String?
    var age : Int = 0
    
    func toString(){
        print("강아지 \(name)의 나이는 \(age)")
    }
}

var dog1 = Dog(name:"미미", age:2)
dog1.toString()


// enum으로 열거형 만들기

enum Gender{
    case Female
    case Male
}

class Person{
    var name : String!
    var gender : Gender!
    
    init(){
        
    }
    
    init(name:String, gender:Gender){
        self.name = name
        self.gender = gender
    }
    
    func getGender()->Gender{
        return self.gender
    }
}

var person1:Person=Person(name:"영희", gender:Gender.Female)

if person1.gender == Gender.Female{
    print("female")
}
else if person1.gender == .Male{ // 열거형 이름 생략 가능
    print("male")
}

enum Car : Int{
    case Benz=0
    case BMW
    case Other
}

enum CarSize:String{
    case Small = "소형"
    case Medium = "중형"
    case Big = "대형"
}

var car1 = Car(rawValue:0)!
var size1 = CarSize(rawValue:"소형")!

print("car : \(car1.rawValue)")
print("carsize: \(size1.rawValue)")


enum Car2 : Int{
    case Benz=0
    case Bmw
    case other
    
    var name : String{
        if self == .Benz{
            return "벤츠"
        } else if self == .Bmw{
            return "비엠더블유"
        } else{
            return "기타"
        }
    }
    
    func getName()->String{
        return self.name
    }
}

var car2 = Car2.Bmw
print("차 이름 : \(car2.name)")

var carName = car2.getName()
print("차 이름 : \(carName)")


enum CarSize2{
    case small
    case medium
    case big
    case other(Int)
}

var size2 = CarSize2.other(10)

let sizeValue = 10

switch size2{
case .small:
    print("소형차")
case .other(sizeValue):
    print("\(sizeValue)")
default:
    print("unknown")
}


// quiz 22

enum Family:Int {
    case Father = 1
    case Mother
    case Son
}

var member1 = Family.Mother

if member1 == .Father {
    print("아빠")
} else if member1 == .Mother {
    print("엄마")
} else if member1 == .Son {
    print("나")
}


// Swift study 04

class Person2{
    var name:String?
    var age:Int?
    var mobile:String?
    
    init(name:String?, age:Int, mobile:String?){
        self.name=name
        self.age=age
        self.mobile=mobile
    }
    
    var friend:Bool{
        get{
            if self.name == "철수"{
                return true
            }
            else{
                return false
            }
        }
    }
    
    func walk(){
        print("\(self.name)이 걸어감.")
    }
    func run(){
        print("\(self.name)이 뛰어감.")
    }
}
var person10 = Person2(name:"철수", age:20, mobile:"010-1000-1000")
var person20 = Person2(name:"영희", age:22, mobile:"010-2000-2000")
var person30 = Person2(name:"태수", age:21, mobile:"010-3000-3000")

print("\(person10.name)은 친구인가? : \(person10.friend)")
person10.walk()
