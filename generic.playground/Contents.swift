// 제네릭

// 제네릭은 데이터의 자료형에 의존하지 않고 프로그램을 만들 수 있는 방법 제공

class ShoppingList<Element>{
    var list = [Element]()
    func add(newElement:Element)->Int{
        list.append(newElement)
        return list.count
    }
    func get(index:Int)->Element{
        return list[index]
    }
    func remove(at:Int)->Element{
        return list.remove(at:at)
    }
}

var mylist = ShoppingList<String>()  // 객체를 만들 때 제네릭의 자료형 명시.
var count = mylist.add(newElement:"양배추")
print("쇼핑 리스트에 추가 : \(count)")


class ShoppingItem{
    var name : String
    var price : Int
    init(name:String, price:Int){
        self.name=name
        self.price=price
    }
}

var mylist2 = ShoppingList<ShoppingItem>()
var count2 = mylist2.add(newElement:ShoppingItem(name:"양배추", price:1000))
print("shoppingitem 객체를 쇼핑 리스트에 추가 : \(count2)")


func show<T>(data:T)->T{
    print("데이터 : \(data)")
    return data
}

show(data:"안녕하세요")
show(data:10.1)


// Quiz 32

class Person{
    var name : String?
    var mobile : String?
    
    init(name:String, mobile:String){
        self.name=name
        self.mobile=mobile
    }
    func walk(){
        print("\(name!)이(가) 걷는다.")
    }
}

class Student : Person{
    override func walk(){
        print("학생 \(name!)이(가) 걷는다.")
    }
}

var person1:Person = Student(name:"김현수", mobile:"010-1000-1000")
person1.walk()

var student1 = person1 as? Student
student1!.walk()


