// Class 2

// 지연속성
class Friend{
    var name : String?
    init(){
        print("Friend:init 호출됨.")
        name = "Friend"
    }
}

class Person{
    var name : String?
    lazy var group = Friend() // 바로 생성 x. group 변수 참조시 초기화되어 만들어짐.
    init(name:String){
        self.name=name
    }
    func walk(speed:Int){
        print("\(name)이(가) \(speed)km 속도로 걸어감.")
    }
    func fun(speed:Int){
        print("\(name)이(가) \(speed)km 속도로 뛰어감.")
    }
}

var person01 = Person(name:"철수")
person01.walk(speed:10)

print("Group 속성 : \(person01.group)")



// 계산 속성

class Person2{
    var name:String?
    var height:Float?
    var weight:Float?
    init(name:String, height:Float, weight:Float){
        self.name=name
        self.height=height
        self.weight=weight
    }
    var bmi:Float{
        get{
            return weight!/(height! * 2)    // 블록 안에서 bmi 값 계산 후 그 값을 반환.
        }
        set(bmi){           // bmi 값 할당 시 set 안의 코드 실행. height와 weight 변수에 새로운 값 할당.
            if bmi<20{
                height=1.7
                weight=50
            } else if bmi>=20{
                height=1.65
                weight=64
            }
        }
    }
}

var person02 = Person2(name:"철수", height:1.7, weight:49.5)
print("BMI 값 : \(person02.bmi)")

person02.bmi = 18
print("BMI 값 : \(person02.bmi)")

person02.bmi=22
print("BMI 값 : \(person02.bmi)")


// 속성 옵저버

class Person3{
    var name:String?
    var height:Float?
    var weight:Float?
    
    init(name:String, height:Float, weight:Float){
        self.name = name
        self.height = height
        self.weight = weight
    }
    
    var bmi : Float = 0.0{
        willSet(bmi){                                   // 속성에 값이 할당되기 바로 전에 호출
            print("bmi willSet 호출됨 : \(bmi)")
        }
        didSet{                                         // 속성에 값이 할당된 직후에 호출
            print("bmi didSet 호출됨 : \(bmi),\(oldValue)")
        }
    }
}

var person03 = Person3(name:"철수", height:1.7, weight:49.5)
print("BMI 값 : \(person03.bmi)")

person03.bmi=18
print("BMI 값 : \(person03.bmi)")


// 타입 속성

class Person4{
    var name:String?
    init(name:String){
        self.name = name
    }
    static var total : Int = 0 // 모든 인스턴스 객체에서 접근 및 값 사용, 변환 가능  ex) Person4.total = 3
    
    class var halfTotal : Int{
        get{
            return total/2
        }
        set(newValue){
            total = newValue * 2
        }
    }
    
    class func getTotal() -> Int{
        return total
    }
}

var person04 = Person4(name:"aa")
print("만들어진 객체 수 : \(Person4.total)")

Person4.halfTotal = 10
print("만들어진 객체 수 : \(Person4.total)")


// 타입 메소드

// 메소드 : 객체안에 들어있는 함수.

var total = Person4.getTotal()
print("만들어진 객체 수 : \(total)")


// quiz 20

class Dog {
    var name : String?
    var ageData : Int = 0
    
    init(name:String){
        self.name = name
    }
    
    var age:Int{
        get{
            return ageData
        }
    }
    
    var birth:Int{
        get{
            return 2018-ageData
        }
        set(birth){
            ageData = 2018 - birth
        }
    }
}

var dog = Dog(name:"aa")
dog.birth = 2000
print("\(dog.age)")
