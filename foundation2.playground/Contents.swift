// 다양한 기능을 가진 로그, 배열, 딕셔너리 객체 사용하기

import Foundation

var message = "안녕하세요!"
NSLog("메시지 : %@", message)

var first = 10
var second = 20
NSLog("첫 번째 : %d, 두 번째 : %d", first, second)

class Rectangle : NSObject{
    var width = 0
    var height = 0
    
    init(width:Int, height:Int){
        self.width=width
        self.height=height
    }
    override var description : String{
        return "직사각형 \(width), \(height)"
    }
}

var rect1 = Rectangle(width:100, height:100)
NSLog("객체 정보 : %@", rect1)
print("\(rect1)")


let names : NSArray = ["소녀시대","걸스데이","티아라"]
NSLog("원소 개수 : %d", names.count)

var index = 0
for item in names{
    let name = item as! String
    NSLog("원소 #%d : %@", index, name)
    index+=1
}

let names2 : NSMutableArray = ["소녀시대","걸스데이","티아라"]
names2.add(2)
names2.insert("애프터스쿨", at:1)
names2.removeObject(at:2)

index=0
for item in names2{
    if(item is String){
        let name = item as? String
        print("원소 #\(index) : \(name!)")
    } else{
        print("원소 #\(index) 가 문자열이 아닙니다. : \(item)")
    }
    index += 1
}

let names3 : NSMutableDictionary = [1:"소녀시대", 2:"걸스데이", 3:"티아라"]

names3.setObject("애프터스쿨", forKey:4 as NSCopying)
names3.removeObject(forKey:1)

index=0
for (key,value) in names3{
    print("원소 #\(index)-> \(key):\(value)")
    index+=1
}


// Swift study 09

class Dog{
    var name : String!
    var birth : Date!
    
    init(name:String, birth:Date){
        self.name=name
        self.birth=birth
    }
    func description(){
        print("강아지 이름 : \(name!), 생일 : \(birth!)")
    }
}

let nameData = "미미,캔디"
let birthData = "2017-01-02 12:20,2017-05-10 10:30"

let names4 = nameData.components(separatedBy: ",")
let births = birthData.components(separatedBy: ",")

var formatter = DateFormatter()
formatter.dateFormat="yyyy-MM-dd HH:mm"

var dogs:[Dog]=[]
for i in 0..<names4.count{
    let name = names4[i]
    let birth = births[i]
    
    let birthDate = formatter.date(from: birth)!
    let dog = Dog(name:name, birth:birthDate)
    dogs.append(dog)
}

for dog in dogs{
    dog.description()
}
