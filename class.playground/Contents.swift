// Class

var count=0

func add(a:Int, b:Int)->Int{
    count += 1
    let output = a+b
    return output
}

func subtract(a:Int, b:Int)->Int{
    count += 1
    return a-b
}

var result = add(a:20,b:10)
print("add함수 결과 : \(result), \(count)")

result = subtract(a:20,b:10)
print("sub함수 결과 : \(result), \(count)")


class Calculator{
    var count=0
    
    func add(a:Int, b:Int)->Int{
        count += 1
        let output = a+b
        return output
    }
    
    func subtract(a:Int, b:Int)->Int{
        count += 1
        return a-b
    }
}

var calculator1 = Calculator()
result = calculator1.add(a:20,b:10)
print("Calculator1 add 결과 : \(result), \(calculator1.count)")


// quiz 17

class Dog{
    var name = "미미"
}

var dog1 = Dog()
print(dog1.name)


class Person{
    var name = ""
    
    func walk(speed:Int){
        print("\(name)이(가) \(speed)km 속도로 걸어감")
    }
    func run(speed:Int){
        print("\(name)이(가) \(speed)km 속도로 뛰어감")
    }
}

var person1 = Person()
person1.name = "철수"
person1.walk(speed:10)

var person2 = Person()
person2.name = "영희"
person2.run(speed:20)


// quiz 18

class Dog2{
    var name = ""
    
    func walk(){
        print("\(name) 강아지가 걸어갑니다")
    }
}

var dog2 = Dog2()
dog2.name = "초코"
dog2.walk()


class Person2{
    var name:String?
    
    init(){
        
    }
    init(name:String){
        self.name=name
    }
    
    func walk(speed:Int){
        print("\(name)이(가) \(speed)km 속도로 걷는다.")
    }
}

var person01 = Person2(name:"철수")
person01.walk(speed:10)

var person02 = Person2(name:"영희")
person02.walk(speed:20)

var person03 = person02
person03.walk(speed:30)

person02.name="수진"
person03.walk(speed:30)


func changePerson(person:Person2){
    person.name="진경"
}
changePerson(person:person02)
person03.walk(speed:40)


if person01 === person02{
    print("same")
} else{
    print("different")
}

if person02 === person03{
    print("same")
} else{
    print("different")
}


// quiz 19

class Dog3{
    var name:String?
    
    init(name:String){
        self.name=name
    }
    
    func walk(){
        print("\(name)강아지가 걸어간다.")
    }
}

var dog3 = Dog3(name:"미미")
var dog4 = Dog3(name:"캔디")

if dog3 === dog4{
    print("same")
} else{
    print("different")
}
