// 문자열 다루기

var message : String = "안녕하세요!"
var length = message.characters.count
print(length)

var first = message[message.startIndex]
var last = message[message.index(before:message.endIndex)]
print("첫 번째 : \(first), 마지막 : \(last)")

if message.hasPrefix("안녕"){
    print("안녕 으로 시작합니다.")
}

if message.hasSuffix("!"){
    print("! 로 끝납니다.")
}


// 문자열 일부를 뽑아내거나 삭제하기

let range = message.index(message.startIndex, offsetBy:1) ... message.index(message.endIndex, offsetBy:-2)
let messagePart = message[range]
print("인덱스 1~(끝-2) : \(messagePart)")

let range2 = message.index(message.startIndex, offsetBy:2) ..< message.endIndex
let messagePart2 = message[range2]
print("인덱스 2~끝 : \(messagePart2)")

message.removeSubrange(range2)
print("인덱스 2~끝 삭제 후 : \(message)")

var id = "TestUser01"
print("LowerCase : \(id.lowercased())")
print("UpperCase : \(id.uppercased())")


// 문자열 분리하기

let fruits = "apple,peach,kiwi"
let fruitsArray = fruits.split(separator:",")
print("과일 개수 : \(fruitsArray.count)")

var index = 0
for fruit in fruitsArray{
    print("#\(index) : \(fruit)")
}

// 문자열 안에 있는 문자의 위치 알아내기

var message2 : String = "안녕하세요!"

var index1 = message2.index(of:"하")!
print("하 글자의 인덱스 : \(String(describing: index1))")

