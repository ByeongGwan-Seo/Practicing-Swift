import UIKit

var greeting = "Hello, playground"
//
//let isMan = true
//let isHuman = false
//
//var isSingle = true
//
//isSingle.toggle()
//
//isSingle
//
////.toggle은 불리언 값에다 not을 때리는 내장함수
//
////isMan.toggle()
////isHuman.toggle()
//
////위와 같은 경우엔 isMan과 isHuman이 let으로 선언, 즉 상수로 선언되었기 때문에 toggle 내장함수를 사용할 수 없다.
//
//let difficulty = "hard"
//let age = 70
//let message = "\(age) 할머니도 배우는 개발은 \(difficulty)"
//
//message
//
//print(message)
//
////array
//let ages = [3, 20, 60]
//let colors = ["red", "blue", "green"]
//
//let color = colors[1]
//
//print(color)
//
////dictionary (key : value)
//
//let languageCode = [
//    "korea":"kor",
//    "japan":"jp",
//    "english":"en"
//]
//
//let lc = languageCode["korea"]
//
//print(lc)
////왜 Optional("kor")이 나오는걸까...?
//
////초기화
//var emptyArr: [Int] = []
//var emptyDictionary: [String:Any] = [:]
//
////enum : 서로 관계있는 값들을 모아서 표현한 것. 특정 타입들을 표시할때 사용하기 좋음
//
//enum WeekDay {
//    case mon
//    case tue
//    case wed
//    case thu
//    case fri
//}
//
//var today: WeekDay = .fri
//변수 today가 enum 타입이다. 만약 오타가 났을때 찾아내기 쉬움. for example mon -> mom이라고 썼을때 등등


//enum MediaType {
//    case audio
//    case video
//}
//
//var mediaType: MediaType = .audio

enum MediaType {
    case audio(String)
    case video(String)
}

var mp3: MediaType = .audio("mp3")
var h264: MediaType = .video("mp4")

//조건문, 반복문: if, switch

var age = 10

if age > 20 {
    print("an adult")
} else {
    print("kid")
}

age = 70

if age >= 10 && age < 20 {
    print("teenager")
} else if age >= 20 && age < 30 {
    print("20's")
} else if age >= 30 && age < 40 {
    print("30's")
} else if age >= 40 && age < 50 {
    print("40's")
} else {
    print("hello old man")
}

//조건 검사: switch

enum Weather {
    case sun
    case cloud
    case rain
}

//var weather: Weather = .sun

var weather: Weather = .rain

switch weather {
case .sun:
    print("sunny")
case .cloud:
    print("cloudy")
case .rain:
    print("rainy")
}

// 반복문: for, while -> 배열과 딕셔너리의 아이템을 순차적으로 체크할때

//for문 구조 = for 변수명 in 범위 {실행 코드} like Python

//let ages = [3, 20, 60]
//let languageCode = [
//    "korea" : "kr",
//    "united states" : "us",
//    "japan" : "jp"
//]
//
//for age in ages {
//    print("age: \(age)")
//}
//
//for (key, value) in languageCode {
//    print("\(key)'s language code is \(value)")
//}

//일정 횟수의 단순 반복 예시

for _ in 0..<3 {
    print("glad to see you")
}

for _ in 0...3 {
    print("hello")
}

//추가 : Swift에서의 범위 연산자, ..< 와 ...
//..< : 마지막 값을 제외한 범위 ex) 0..<10 = 0, 1, 2, 3, ... 9
//... : 마지막 값까지 포함한 범위 ex) 0...10 = 0, 1, 2, 3, ... 10

// swift for문으로 구구단 만들기

let num = 2

for i in 2...9 {
    for j in 1...9 {
        print("\(i) x \(j) = \(i * j)")
    }
    print("=====================")
}

//while: 특정 조건을 이용, 또는 무한 루프 등을 구현할 때 사용

var count = 10

print("ready to countdown")

while count > 0 {
    print("\(count)...")
    count -= 1
}

print("good to go")

//iOS에서 조건문을 잘못 사용해 무한루프가 생길경우 크래시가 날 수 있다.
//여기서부터 좀 생소한 내용 스타트. 옵셔널, 클로저 등등

//옵셔널Optional


