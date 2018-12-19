// Optional and Tuple

func show(value1 : String){
    var value2 : Int?
    value2 = Int(value1)
    print(value2!)
}

show(value1:"10")
//show(value1:"안녕!") -> 숫자 옵셔널을 해제하며 오류 발생


func show2(value1 : String){
    var value2 : Int?
    value2 = Int(value1)
    
    if value2 == nil {
        print("전달받은 숫자 x")
    }
    else {
        print("전달받은 숫자 : \(value2!)")
    }
}

show2(value1:"10")
show2(value1:"안녕")


func show3(value1 : String) -> Int?{
    var value2 : Int?
    value2 = Int(value1)
    
    if value2 == nil{
        print("전달 받은 숫자 x")
    } else{
        print("전달 받은 숫자 : \(value2!)")
    }
    
    return value2
}

var result = show3(value1:"10")
print("결과 : \(result)")

result = show3(value1:"안녕")
print("결과 : \(result)")


// quiz 10
func divide(_ a:Int, _ b:Int) -> Int?{
    if b==0{
        return nil
    }
    return a/b
}

let result1 = divide(20,10)
let result2 = divide(20,0)

print("나누기 결과: \(result1), \(result2)")


let value1 = (10,"안녕",Float(2.4),true)
print(value1)

var item1 = value1.0
print("첫번째 원소 : \(item1)")


let value2 = (x:10, y:20)
var item2 = value2.x
print("x원소 : \(item2)")


var value3 : (Int, Int) = (10,20)
value3.0 = 30
print("value3의 첫번째 원소 : \(value3.0)")


let value4 : (Int, Int) = (10,10)
let(x,y) = value4
print(x)


func getLocation() -> (x:Int, y:Int){
    return (10,10)
}

var location = getLocation()
print("내 위치 : \(location.x),\(location.y)")

func getLocation2() -> (Int, Int){
    return (20,20)
}

location = getLocation2()
print("내 위치 : \(location)")


func getPerson(value1:String)->(name:String,age:Int?)?{
    var value2 : Int?
    value2 = Int(value1)
    if value2 == nil{
        print("전달 받은 숫자 x")
        return nil
    } else {
        print("전달 받은 숫자 : \(value2!)")
        return (name:"김진수", age:value2)
    }
}

var res = getPerson(value1:"20")
print("결과 : \(res)")


func getCount(persons:(name:String, age:Int)...)->Int{
    var count=0
    for(_, _) in persons{
        count+=1
    }
    
    return count
}

var res2 = getCount(persons:("김진수",20),("김진희",22))
print("결과 : \(res2)")


// quiz 11

func getCount2(person:(name:String?, mobile:String?)...) -> (Int,Int){
    var nameCount = 0
    var mobileCount = 0
    for (value1,value2) in person{
        if value1 != nil{
            nameCount += 1
        }
        
        if value2 != nil{
            mobileCount += 1
        }
    }
    return (nameCount, mobileCount)
}

var result11 = getCount2(person:("소녀시대","010,0000,1000"),("걸스데이",nil),(nil,nil))
print("결과 : \(result11)")


// Swift Study 02

func calcAge(name:String,mobile:String,birth:Int?)->(String,String,Int)?{
    if birth == nil{
        return nil
    }
    let age = 2018-birth!
    
    return(name,mobile,age)
}

let person = calcAge(name:"김준수",mobile:"010-000-0000",birth:1998)
print("결과 : \(person!.2)")
