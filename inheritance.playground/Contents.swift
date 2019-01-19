// 상속과 프로토콜

// 상속이란?

class Person{
    var name : String!
    var age : Int!
    
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
    func toString()->String{
        return "Person {\(name!), \(age!)}"
    }
}

class Baby : Person{
    
}

var person1 = Person(name:"소녀시대", age:20)
print("person1 info : \(person1.toString())")

var baby1 = Baby(name:"걸스데이", age:22)
print("baby1 info : \(baby1.toString())")


class Rectangle {
    var width : Int
    var height : Int
    
    init(width:Int, height:Int) {
        self.width = width
        self.height = height
        
        show()
    }
    
    init(){
        self.width=0
        self.height=0
    }
    convenience init(height:Int){  // 부분 초기화 함수
        self.init()
        self.height=height
    }
    
    init?(width:Int, height:Int, type:Int){         // 실패 가능 초기화 함수
        self.width=width
        self.height=height
        if type<1{
            return nil
        }
    }
    
    func show(){
        print("Rectangle {\(width), \(height)}")
    }
}

var rect1 = Rectangle(width:100, height:100)
var rect2 = Rectangle(height:200)
rect2.show()

var rect3 = Rectangle(width:300, height:300, type:-1)
print("rect3 info : \(rect3)")


// 상속한 클래스의 초기화 함수

class Person2 {
    var name : String!
    var age : Int!
    
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
    func toString()->String{
        return "{\(name!), \(age!)}"
    }
}

class Baby2 : Person2{
    var mobile : String
    
    init(name:String, age:Int, mobile:String){
        self.mobile=mobile
        super.init(name:name, age:age)
        print(toString())
    }
    
    convenience init(name:String){
        self.init(name:name, age:0, mobile:"")
    }
}

var baby2 = Baby2(name:"걸스데이", age:22, mobile:"010-1000-1000")
print("baby2 info : \(baby2.toString())")

var baby3 = Baby2(name:"티아라")


// Quiz 30

class Person3{
    var name:String!
    var mobile:String!
    
    init(name:String, mobile:String){
        self.name=name
        self.mobile=mobile
    }
}

class Student : Person3{
    var school:String!
    
    init(name:String, mobile:String, school:String){
        self.school=school
        super.init(name:name, mobile:mobile)
    }
    func sleep(){
        print("학생 \(self.name!)이(가) 자고있습니다")
    }
}

var student1 = Student(name:"김현수", mobile:"010-1000-1000", school:"고려대학교")
student1.sleep()
