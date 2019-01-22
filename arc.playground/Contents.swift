// 메모리 관리 ARC(Automatic Reference Counting)


class Person{
    var name : String!
    var age : Int!
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
    deinit{
        print("\(name!)가 메모리에서 해제")
    }
}

var person1 : Person! = Person(name:"소녀시대", age:20)
person1 = nil

var person2 : Person! = Person(name:"걸스데이", age:22)
var person3 = person2

person2 = nil // person3가 가리키는 레퍼런스는 사라지지 않아서 객체가 해제되지 않음.


// 변수의 유효 범위

func createPerson(name:String, age:Int){
    let person4 : Person! = Person(name:name, age:age)
    print("person4 변수 만들어짐. \(person4.name!)")
}

createPerson(name:"티아라", age:24)


class Team{
    var person:Person!
    init(){
        person=Person(name:"애프터스쿨", age:23)
    }
    func show(){
        print("Team 안의 Person 객체 : \(person.name)")
    }
}

var team1 : Team! = Team()
team1.show()
team1=nil


// 강한 순환 참조 (Strong Reference Cycles) : 프로그램이 종료될 때까지 해제되지 않고 계속 유지됨.

class Person2 {
    var name:String!
    var age:Int!
    var team:Team2!
    init(name:String, age:Int){
        self.name=name
        self.age=age
        print("\(name)이 만들어짐.")
    }
    deinit{
        print("\(name!)이(가) 메모리에서 해제.")
    }
}

class Team2{
    var person:Person2!
    init(person:Person2){
        self.person=person
        print("Team이 만들어짐.")
    }
    deinit{
        print("Team 객체 해제.")
    }
}

// Person 객체 안의 변수는 Team 객체를 가리키고, Team 객체 안의 변수는 Person 객체를 가리키게 됨. '상호참조'
var person4 : Person2! = Person2(name:"소녀시대", age:22)
var team2 : Team2! = Team2(person:person4)
person4.team = team2

person4.team = nil  // 속성에 직접 nil을 할당해야 해제됨.
team2.person = nil

person4 = nil // nil을 할당해도 객체는 해제되지 않음.
team2 = nil

// 강한 순환참조는 객체들을 메모리에 계속 유지시켜 메모리가 증가하는 현상을 만들 수 있음.

// 약한 참조

class Person3 {
    var name:String!
    var age:Int!
    var team:Team3!
    init(name:String, age:Int){
        self.name=name
        self.age=age
        print("\(name)이 만들어짐.")
    }
    deinit{
        print("\(name!)이(가) 메모리에서 해제.")
    }
}

class Team3{
    weak var person:Person3?
    init(person:Person3){
        self.person=person
        print("Team이 만들어짐.")
    }
    deinit{
        print("Team 객체 해제.")
    }
}

var person5 : Person3! = Person3(name:"소녀시", age:22)
var team3 : Team3! = Team3(person:person5)
person5.team = team3

person5 = nil
//team3.person
team3 = nil


// 컬렉션의 소유권

class Person4{
    var name:String!
    var age:Int!
    init(name:String, age:Int){
        self.name=name
        self.age=age
        print("\(name)이 만들어짐.")
    }
    deinit{
        print("\(name!)가 메모리에서 해제")
    }
}

var persons = [Person4]()
var person6 : Person4! = Person4(name:"소녀시대", age:22)
persons.append(person6)
print("person6을 배열에 추가")

persons.remove(at:0)
person6=nil

