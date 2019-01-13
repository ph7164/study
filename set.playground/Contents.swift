// Set

/* 순서없이 값만을 넣음 (모두 다른 값을 가져야 함!!)
 var food  : Set<String> = ["cheese","milk","bread"]
 food.count  원소의 수
 food.isEmpty.  비엇는지 아닌지 확인
*/

var names : Set<String> = ["소녀시대","걸스데이","티아라"]
print(names.count)

if names.contains("걸스데이"){
    print("있음")
    names.remove("걸스데이")  // 원소 삭제
    print(names.count)
}

names.insert("애프터스쿨") // 원소 추가
var index=0
for name in names {
    print("\(index) -> \(name)")
    index += 1
}

var names1 : Set<String> = ["소녀시대","걸스데이","티아라"]
var names2 : Set<String> = ["걸스데이","애프터스쿨"]

names2.insert("애프터스쿨") // 이미 존재하므로 추가 x
print("names2 count : \(names2.count)")

var output = names1.intersection(names2)
print("교집합 결과 : \(output)")

output = names1.union(names2)
print("합집합 결과 : \(output)")

output = names1.symmetricDifference(names2)
print("여집합 결과 : \(output)")

output = names1.subtracting(names2)
print("차집합 결과 : \(output)")


// quiz 26

var members : Set<String> = []
members.insert("아빠")
members.insert("엄마")
members.insert("나")
members.insert("동생")

print(members.count)

var index1 = 0
for name in members{
    print("가족구성원 #" + String(index1) + " -> " + name)
    index1 += 1
}
