// 변수에 함수 할당하기

func add(first a:Int, second b:Int) -> Int{
    return a+b
}

let result = add(first:10, second:10)
print("add 결과 : \(result)")

var add2 = add;
let result2 = add2(10,10)
print("add2 결과 : \(result2)")

func show(data:Int)->Int{
    return data
}

let show2 : (Int) -> Int = show

let add3 : (Int, Int) -> Int = add

func appendFormFeed(a:Int, b:String)->(Int, String){
    return (a+1, b+"\n")
}

let append2 : (Int, String) -> (Int, String) = appendFormFeed
print("append2 결과 : \(append2(10,"김준수"))")


// 함수를 파라미터로 전달

func add4(first a:Int, second b:Int, callback:((Int) -> Void)){
    let result = a+b
    callback(result)
}

func show4(result:Int){
    print("add4 결과 : \(result)") // 정수값 하나만 전달, 반환값 없음.
}
add4(first:10, second:10, callback:show4) // callback 함수


func successPrint(){
    print("성공")
}

func failPrint(){
    print("실패")
}

var names = [1:"소녀시대", 2:"여자친구", 3:"티아라"]
func getData(index:Int, success sCallback:()->Void, fail fCallback:()->Void) -> String?{
    if let name = names[index]{
        sCallback()
        return name
    }
    defer{
        fCallback()
    }
    return nil
}

var result1 = getData(index:1, success:successPrint, fail:failPrint)
var result3 = getData(index:5, success:successPrint, fail:failPrint)

// 함수를 호출할 때 한번만 사용될 함수일 경우 만들면서 동시에 호출
var result4 = getData(index:3,
                      success:{
                        ()->Void in
                        print("성공했습니다")
                    },
                      fail: {
                        ()->Void in
                        print("실패했습니다")
                    })

// 함수 결과를 함수로 반환

func add5(first a:Int, second b:Int)->Int{
    return a+b
}

func subtract5(first a:Int, second b:Int)->Int{
    return a-b
}

func selectCalc(index:Int)->((Int,Int)->Int)?{
    if index == 1{
        print("select add")
        return add5
    } else if index == 2{
        print("select subtract")
        return subtract5
    } else{
        print("unknown")
        return nil
    }
}

var addCalc = selectCalc(index:1)!
var result5 = addCalc(20,20)

print("add 결과 : \(result5)")

var result6 = selectCalc(index:2)!(100,10)
print("subtract 결과 : \(result6)")


// quiz 28
func sum(start:Int, end:Int, callback:((Int)->Void)){
    var total = 0
    for i in start...end{
        total += i
    }
    callback(total)
}

var start = 1
var end = 10

func callback(result:Int)->Void{
    print("result : \(result)")
}

sum(start:start, end:end, callback:callback)
