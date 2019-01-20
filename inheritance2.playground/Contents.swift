// 메소드 재정의와 메소드 추가

class Person{
    var name:String
    var age:Int
    
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
    
    func walk(duration:Int)->Int{
        return duration*10
    }
}

class Baby : Person{
    override func walk(duration:Int)->Int{  // 메소드 재정의시 override 사용.
        return duration*5
    }
    
    func cry(){
        print("아기가 웁니다")
    }
}

var person1 = Person(name:"소녀시대", age:20)
print("person1 걸어간 거리 : \(person1.walk(duration:10))")

var baby1 = Baby(name:"걸스데이", age:22)
print("baby1 걸어간 거리 : \(baby1.walk(duration:10))")


// 상속 클래스에서 속성을 재정의 하는 경우

class Baby2 : Person{
    override var name : String{
        didSet{
            print("name : \(name)")
        }
    }
    
    override var age : Int{
        get{
            return 10
        }
        set{
            
        }
    }
}

var baby2 = Baby2(name:"티아라", age:22)
print("baby2 나이 : \(baby2.age)")

baby2.name="여자친구"


class Rectangle{
    final var width: Int!
    final var height:Int!
    final func getWidth()->Int{
        return width
    }
}
/*      final을 사용하면 자식 클래스에서 재정의 할 수 없음.
class Square : Rectangle{
    override func getWidth()->Int{
        
    }
}
*/


// Quiz 31

class Person2{
    var name:String?
    var mobile:String?
    
    init(name:String, mobile:String){
        self.name=name
        self.mobile=mobile
    }
    
    func walk(){
        print("사람 \(self.name!)이(가) 걸어갑니다.")
    }
}

class Student : Person2{
    override func walk(){
        print("학생 \(self.name!)이(가) 걸어갑니다.")
    }
}

var person2 = Person2(name:"김현수", mobile:"010-1000-1000")
person2.walk()

var student1 = Student(name:"김재학", mobile:"010-2000-2000")
student1.walk()
