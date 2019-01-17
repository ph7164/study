// guard

var ages = [20, 23, 21, 17, 25]

for item in ages{
    guard item > 19 else{
        break
    }
    print("age : \(item)")
}

// 예외적인 경우를 걸러낼 때 사용하기 좋음.

func checkBlood(type:String)->String?{
    if type == "A" || type == "O"{
        return "OK"
    }
    return nil
}

func checkBloodTest(myblood:String){
    guard let result = checkBlood(type:myblood) else{
        print("result is nil")
        return
    }
    print("result : \(result)")
}

checkBloodTest(myblood:"O")
checkBloodTest(myblood:"B")

// quiz 27

class Dog{
    var name : String?
    var age:Int?
    
    init(name:String, age:Int){
        self.name=name
        self.age=age
    }
}

func createDog(name:String, age:Int)->Dog?{
    return Dog(name:name, age:age)
}

if let dog1 = createDog(name:"미미", age:1){
    print("강아지 객체 : \(dog1.name!)")
}
