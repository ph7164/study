// 객체의 형 변환

/*
 업캐스팅 : 자식 클래스 자료형을 부모 클래스 자료형으로 변환
 다운 캐스팅 : 업 캐스팅의 반대
 
 as : 업 캐스팅에 사용
 */

class Person{
    var name : String
    var age : Int
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
}

class Baby : Person{
    func cry(){
        print("아기가 웁니다")
    }
}

var person1 = Person(name:"소녀시대", age:20)
var baby1 = Baby(name:"걸스데이", age:22)

var person2 : Person = Baby(name:"티아라", age:22)

let baby2 = person2 as? Baby
if baby2 != nil{
    print("person2 변수의 자료형이 Baby로 변환")
}

if let baby3 = person2 as? Baby{   // as? 대신 as!를 사용할 수도 있음.
    print("\(baby3.name)는 Baby 자료형으로 변환.")
}


// Any 와 AnyObject

// Any는 어떤 자료형에나 들어갈 수 있는 범용 자료형
// AnyObject는 클래스들이 상속받는 가장 상위 클래스. 어떤 클래스든 AnyObject로 형 변환 가능.

var person3 : Any = Person(name:"애프터스쿨", age:24)
var baby4 : AnyObject = Baby(name:"여자친구", age:23)

let person4 = person3 as? Person
let baby5 = baby4 as? Baby

if person4 != nil{
    print("Any에서 Person으로 형 변환")
}
if baby5 != nil{
    print("AnyObject에서 Baby로 형 변환")
}


var array1 = [AnyObject]()
array1.append(person1)
array1.append(baby1)
print("array1의 크기 : \(array1.count)")

var dict1 = [String:Any]()
dict1["1"] = person1
dict1["2"] = baby1
dict1["3"] = 10
print("dict1의 크기 : \(dict1.count)")

// Any나 AnyObject 자료형을 배열이다 딕셔너리에 사용하면 편리함. 너무 자주 사용하면 매번 형 변환을 해야함. 상황에 맞게.

