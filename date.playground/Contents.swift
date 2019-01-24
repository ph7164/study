// 날짜와 시간 다루기

import Foundation

let now = Date()
print("현재 일시 : \(now)")

var formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd HH:mm:ss ZZZ"

let nowStr = formatter.string(from: now)
print("현재 일시 : \(nowStr)")

let yesterday = Date(timeIntervalSinceNow: (-60*60*24))
let yesterdayStr = formatter.string(from: yesterday)
print("1일 전의 일시 : \(yesterdayStr)")

let tomorrow = Date(timeIntervalSinceNow: (60*60*24))
let tomorrowStr = formatter.string(from:tomorrow)
print("1일 후의 일시 : \(tomorrowStr)")

let oneHourLater = now.addingTimeInterval((60*60))
print("1시간 후의 일시 : \(formatter.string(from:oneHourLater))")

var result = now.compare(yesterday)
if result == ComparisonResult.orderedDescending{
    print("now가 더 나중입니다.")
}

var hour = Calendar.current.component(Calendar.Component.hour, from:now)
var minute = Calendar.current.component(Calendar.Component.minute, from: now)
print("현재 시간 : \(hour)시 \(minute)분")

formatter.dateFormat = "yyyyMMddHHmmss"
let nowStr2 = formatter.string(from:now)
print("현재 일시 : \(nowStr2)")
