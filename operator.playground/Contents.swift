// Operator

let userId = "test1"
let userPassword = "123456"

func login(id:String, password:String)->Bool{
    if (id == userId) && (password == userPassword){
        return true
    }
    return false
}

var inputId = "test1"
var inputPassword = "123456"
var result = login(id:inputId, password:inputPassword)
print("결과 : \(result)")


// quiz 12

let a=10
let b=20

var c=30

if(a+b)==c{
    print("same")
}else{
    print("not same")
}


// quiz 13

let name : String? = "현수"
let age : Int? = nil

if (name==nil)||(age==nil){
    print("nil이 있다")
}
else{
    print("nil이 없다")
}


var count = 10
var result2 = (count>10) ? true : false
print("result 변수의 값 : \(result2)")


var count2 = 21
var result3 : String? = (count2>20) ? "success" : nil

if result3 == nil{
    print("nil 입니다")
} else{
    print(result3!)
}
if count is Int{
    print("count의 자료형은 Int이다")
} else{
    print("count의 자료형은 Int가 아니다")
}


// quiz 14

let name1 = "현수"
let age1 = 20

if !(name1 is String) || !(age1 is String){
    print("문자열이 아닌것이 있다.")
} else{
    print("문자열 이다")
}


func sum(start:Int, end:Int)->Int{
    var total=0
    
    for i in start ..< end{
        total += i
    }
    return total
}

var result4 = sum(start:1, end:11)
print("결과 : \(result4)")


// quiz 15

let start:Int=200
let end:Int=500

var total=0
for i in start ... end{
    total += i
}
print(total)


func comp(_ value : Int)->Int{
    if value<0{
        return -1
    } else if value==0{
        return 0
    } else{
        return 1
    }
}

var result5 = comp(10)
print("comp 결과 : \(result5)")


func comp2(_ value:Int)->Int{
    if value<0 || value==0{
        return -1
    } else{
        return 1
    }
}

result5 = comp2(10)
print("comp2 결과 : \(result5)")


// quiz 16

let val:Int=12

if val <= 10{
    print("10보다 작다")
} else{
    print("10보다 크다")
}


// Swift Study 03

func isMinor(age:Int)->Bool{
    if age<19{
        return true
    }
    else{
        return false
    }
}

let age2:Int = 20
let minor = isMinor(age:age2)

print("미성년자 여부 : \(minor)")
