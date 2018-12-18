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
