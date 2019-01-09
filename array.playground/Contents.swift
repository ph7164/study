// 여러 데이터 한꺼번에 넣기

class Person{
    var name : String?
    
    init(name:String){
        self.name=name
    }
}

var count=0
let name1 = "소녀시대"
let name2 = "걸스데이"
let name3 = "여자친구"
let name4 = "티아라"
let name5 = "애프터스쿨"

func createPerson()->Person{
    var person : Person!
    if count==0{
        person=Person(name:name1)
    } else if count==1{
        person = Person(name:name2)
    } else if count==2{
        person = Person(name:name3)
    } else if count==3{
        person = Person(name:name4)
    } else if count==4{
        person = Person(name:name5)
    }
    count += 1
    return person
}

var person1 : Person!
person1 = createPerson()
print("만들어진 사람 객체 : \(person1.name!)")

person1 = createPerson()
print("만들어진 사람 객체 : \(person1.name!)")

person1 = createPerson()
print("만들어진 사람 객체 : \(person1.name!)")


// 배열

// 빈 배열 객체 선언하는법
/*
 var ages = [Int]()
 var ages = Array<Int>()
 var ages:[Int]=[]
 */

class Person2{
    var name:String?
    var age:Int=0
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
}

var count2=0
let names=["소녀시대","걸스데이","여자친구","티아라","애프터스쿨"]
let ages = Array<Int>([20,23,22,20,21])

func createPerson2()->Person2{
    var person : Person2!
    person = Person2(name:names[count2],age:ages[count2])
    
    count2+=1
    return person
}

var person2 : Person2!
person2 = createPerson2()
print("객체 : \(person2.name!)")

person2 = createPerson2()
print("객체 : \(person2.name!)")

person2 = createPerson2()
print("객체 : \(person2.name!), \(person2.age)")


// quiz 23

var members = ["아빠","엄마","나","동생"]

let index = 1
print("두번째 가족은? \(members[index])")


class Person3{
    var name:String?
    var age:Int=0
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
}

var count3=0
let names3=["소녀시대","걸스데이","여자친구","티아라","애프터스쿨"]
let ages3 = Array<Int>([20,23,22,20,21])

func createPerson3()->Person3?{
    var person : Person3?
    if count3 < names3.count{
        person = Person3(name:names3[count3],age:ages3[count3])
    } else{
        print("\(count3)에 사람이 없다")
    }
    
    count3+=1
    return person
}

var person3 : Person3!
person3 = createPerson3()
print("객체 : \(person3.name!)")

person3 = createPerson3()
print("객체 : \(person3.name!)")

person3 = createPerson3()
print("객체 : \(person3.name!), \(person3.age)")
person3 = createPerson3()
person3 = createPerson3()
person3 = createPerson3()


// 빈 배열인지 확인하는법 : if names.isEmpty{}

class Person4{
    var name:String?
    var age:Int=0
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
}

var count4=0
var names4=["소녀시대","걸스데이","여자친구","티아라","애프터스쿨"]
let ages4 = Array<Int>([20,23,22,20,21])

func createPerson4()->Person4?{
    var person : Person4?
    if count4 < names4.count{
        person = Person4(name:names4[count4],age:ages4[count4])
    } else{
        print("\(count4)에 사람이 없다")
    }
    
    count4+=1
    return person
}

var persons : Array<Person4> = Array<Person4>()

for i in 0..<5 {
    print("인덱스 \(i)의 이름 : \(names[i])")
    let person4 = createPerson4()!
    persons.append(person4)
    print("사람 객체 : \(person4.name!)")
}

/* 배열에 원소를 추가할 때 : append(newElement:Element)
 중간에 값을 추가할 때 : insert(newElement: Element, at:Int)
 배열에 배열을 추가할 때 : ages += [32,33]
 특정 위치의 원소 제거 : remove(at:Int) -> T  // 어떤 자료형도 될 수 있음
 마지막 원소 제거 : removeLast() -> T
 */

names4.append("에이핑크")
names4.remove(at:0)
names4.removeLast()
print("names4 크기 : \(names4.count)")

for i in 0..<names4.count{
    print("인덱스 \(i)의 사람이름 : \(names4[i])")
    let person = Person4(name:names4[i],age:ages4[i])
    persons.append(person)
    print("만들어진 객체 : \(person.name!)")
}

let target = "티아라"
if names4.contains(target){
    var index = names4.index(of:target)
    print("\(target)의 인덱스 값 : \(index!)")
}
