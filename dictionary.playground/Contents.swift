// 딕셔너리

/* 아래와 같이 만들 수 있음
 var dic = [1:"소녀시대",2:"걸스데이",3:"티아라"]
 var dic2 : [Int:String] = [1:"소녀시대",2:"걸스데이",3:"티아라"]
 var dic3 : Dictionary<Int,String> = [1:"소녀시대",2:"걸스데이",3:"티아라"]
 var dic4 : Dictionoary<Int,String> = Dictionary<Int,String>([1:"소녀시대",2:"걸스데이",3:"티아라"])
 */

var girls : [Int:String] = [1:"소녀시대",2:"걸스데이",3:"티아라"] // 원소가 key 와 value 로 구성.
print("girls dic number: \(girls.count)")

if(girls[1] != nil){
    print("girls key1 : \(girls[1]!)")
}

girls[1]="여자친구"
girls[7]="애프터스쿨"

for (key,value) in girls {
    print("걸그룹 키와 값 : \(key) : \(value)")  // 해시 테이블의 성격을 가져 키로만 구분. 정렬 x
}

for (key,value) in girls.sorted(by:{$0.0 < $1.0}) {
    print("걸그룹 키와 값 -> \(key) : \(value)")
}

var names : [Int:String] = [1:"소녀시대",2:"걸스데이",3:"티아라"]
var ages : [Int:Int] = [1:20,2:22,3:24]
var mobiles : [Int:String] = [1:"010-1000-1000",2:"010-2000-2000",3:"010-3000-3000"]

class Person{
    var name : String?
    var age : Int?
    var mobile : String?
    init(name:String?, age:Int?, mobile:String?){
        self.name=name
        self.age=age
        self.mobile=mobile
    }
}

var persons:[String:Person] = [:]
var person1 = Person(name:names[1],age:ages[1],mobile:mobiles[1])
persons[names[1]!] = person1
var person2 = Person(name:names[2],age:ages[2],mobile:mobiles[2])
persons[names[2]!] = person1
var person3 = Person(name:names[3],age:ages[3],mobile:mobiles[3])
persons[names[3]!] = person1
print(persons.count)


var phonebook : [String:[String]] = [:] // 배열을 만들어 딕셔너리 안에 넣기

var family : [String] = ["엄마","아빠","나"]
phonebook["가족"] = family

var friends : [String] = ["소녀시대","걸스데이","티아라"]
phonebook["친구"] = friends

print("전화번호수 그룹 수 : \(phonebook.count)")

for (group,names) in phonebook{
    print("그룹이름 : \(group)")
    print("\(group)의 이름들 : \(names)")
}

for (index,elem) in phonebook.enumerated(){  // 딕셔너리 내의 모든 원소 확인할 경우 사용
    print("그룹 인덱스 : \(index)")
    print("각 그룹 : \(elem)")
}

let keys = [String](phonebook.keys)
let values = [[String]](phonebook.values)

print("전화번호부 키 배열 : \(keys)") // 키 들만
print("전화번호부 값 배열 : \(values)") // 값 들만

for group in phonebook.keys.sorted().reversed(){ // 내림차순으로 정렬
    print("전화번호부 그룹 이름: \(group)")
}

// quiz 25

var members:[String:String] = [:]

members["아빠"]="아빠1"
members["엄마"]="엄마1"
members["나"]="나1"
members["동생"]="동생1"

print(members.count)

for (key,value) in members{
    print(key + " -> " + value)
}
