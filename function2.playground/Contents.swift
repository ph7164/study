
func show(message:String, terminator:String="\n"){
    print("메시지 :\(message)", terminator: terminator)
}

show(message: "안녕", terminator:"\n")

show(message:"안녕하세요!")


func show2(message : String, newline : Bool = true){
    print(message, newline)
}

show2(message:"반갑습니다")


func add(a:Int, b:Int) -> Int{
    return a+b
}

var result=add(a:10,b:10)
print("결과 : \(result)")


func add2(firstNum a:Int, secondNum b:Int)->Int{
    return a+b
}

result = add2(firstNum:20, secondNum:20)
print("결과 : \(result)")


func sum(values:Int...) -> Int{
    var total = 0
    
    for value in values {
        total += value
    }
    
    return total
}

result = sum(values:10,20,30,40,50)
print("결과 : \(result)")


func show3(message : inout String){
    print("전달 받은 메시지 : \(message)")
    message = "OK"
}

var greeting = "안녕하세요!"
show3(message:&greeting)

print(greeting)


// quiz 09
func add3(_ a:Int, _ b:Int, _ result1: inout Int){
    result1 = a+b
}
var result1 = 0
add3(10,10, &result1)
print("결과 : \(result1)")
