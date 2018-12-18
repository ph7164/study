func show(){
    print("안녕")
}

show()


// quiz 07
func showName(){
    let name : String = "philhwa"
    print("name : \(name)")
}

showName()


func show2(){
    var count=0
    
    for i in 1 ..< 11 {
        count=count+i
    }
    
    print("1부터 10까지 더한 결과 : \(count)")
    
    count = 0
    
    for i in 1 ..< 101 {
        count=count+i
    }
    
    print("1부터 100까지 더한 결과 : \(count)")
}

show2()



func sum(start:Int, end:Int) -> Int{
    var count=0
    for i in start ..< end {
        count = count+i
    }
    
    return count
}

var result = sum(start:1,end:11)
print("sum(1,11)->\(result)")

result = sum(start:1,end:101)
print("sum(1,101)->\(result)")


func add(a:Int,b:Int){
    print("add 호출됨 : \(a), \(b)")
}

add(a:10,b:20)


func add2(first a:Int, second b:Int){
    print("add2 호출됨 : \(a), \(b)")
}

add2(first:10, second:20)


func add3(_ a:Int, _ b:Int){
    print("add3 호출됨 : \(a), \(b)")
}

add3(10,20)


// quiz08

func multiply(_ a:Int, _ b:Int) -> Int{
    return a*b
}

let res = multiply(10,10)
print("result : \(res)")
