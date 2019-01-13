// if문

var i = 2
var j = 3

if i<j {
    print("true")
}

enum Blood{
    case A
    case B
    case O
    case AB
}

var myblood = Blood.B
if myblood == .A{
    print("a형")
} else if myblood == .B{ // 열거형 이름 생략 가능
    print("b형")
} else if myblood == Blood.O{
    print("o형")
} else if myblood == Blood.AB{
    print("ab형")
} else {
    print("unknown")
}

func checkBlood(type:String)->String?{
    if type == "A" || type == "O"{
        return "OK"
    }
    return nil
}
if let result = checkBlood(type:"O"){
    print("result : \(result)")
} else{
    print("result is nil")
}

var sources = ["A","B"]
if let result1 = checkBlood(type:sources[0]), let result2 = checkBlood(type:sources[1]){
    print("result : \(result1), \(result2)")
} else{
    print("result is nil")
}
