var value1 : Int = 10
var message : String = "안녕"

var value2 : String = String(value1)
print(message + value2)


var value3 : String = "20"
var value4 : Int? = Int(value3)
print(value4)
print(value4!)


let limit1 = 100

print(limit1)

typealias Feet = Int
var distance : Feet = 3000
print(distance)

print("사람","동물","집",separator:",")
print("사람","동물","집", terminator:"")

var title = "즐거운 어린이날!"
print("제목 : \(title)")

var name : String = "소녀시대"
var height:Double=180.5
var weight:Double=72.5

print("이름 : \(name), 키 : \(height), 몸무게: \(weight)")
