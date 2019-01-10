// 함수의 파라미터로 변수에 할당된 배열 전달하기

func checkName(names:[String]){
    if names.first == "소녀시대"{  // 첫번째 요소
        print("Error")
    } else{
        print("Ok")
    }
}

let names = ["소녀시대","걸스데이","티아라"]
checkName(names:names)


// 값 전달 방식으로 동작하는 배열


var names2:[String]=["소녀시대","걸스데이","티아라"]
var names3 = names2

names2.append("에이핑크")
print(names2)
print(names3)

if names2 != names3{
    print("두 배열은 다르다")
}


//quiz 24

var members = ["엄마","아빠","나","동생"]
print("가족 구성원 수? :\(members.count)")

members.append("누나")
print("가족 구성원 수? :\(members.count)")

let last = members.popLast()
print("빼낸 가족 구성원? :\(last!)")
print("가족 구성원 수? :\(members.count)")


// 배열 안에 배열 넣기

var phonebook : [[String]] = []

var friends : [String] = ["소녀시대","걸스데이","티아라"]
phonebook.append(friends)

var family : [String] = ["엄마","아빠","나"]
phonebook.append(family)

print("전화번호부 그룹 수 : \(phonebook.count)")
for i in 0..<phonebook.count{
    print("\(i)번째 배열의 원소 수 : \(phonebook[i].count)")
}

for i in 0..<phonebook.count{
    for j in 0 ..< phonebook[i].count{
        print("\(i,j)번째 값 : \(phonebook[i][j])")
    }
}

