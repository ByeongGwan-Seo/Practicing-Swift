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
let languageCode = [
    "korea":"kor",
    "japan":"jp",
    "english":"en"
]

let lc = languageCode["korea"]

print(lc)
//왜 Optional("kor")이 나오는걸까...? -> 상수 lc의 타입이 옵셔널이다. (자료형)? 형태. 딕셔너리 내부의 값 타입은 옵셔널이다. 있을 수도 있고 없을 수도 있고(자세한 내용은 제 자서전...)
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
//값이 있을 수도 있고 없을 수도 있다?

let languageCode2 = [
    "kor" : "kr",
    "eng" : "us",
    "jpn" : "jp"
]

let krCode = languageCode2["kor"]
let enCode = languageCode2["eng"]
let deCode = languageCode2["deu"]

//let krCode: String? -> ?는 Optional 타입이다.
//대체 이런게 이런게 왜 존재하는 것인가? -> swift에서의 nil(null)의 존재에 대한 이해가 필요
//스위프트에서의 nil이란?
//스위프트는 프로그램의 안정성을 극도로 추구하는 언어이기 때문에 오류를 발생시키는 것을 피하고자 함.
//때문에 오류가 아닌 nil값을 리턴함으로서 개발자에게 "여기 문제있다"를 알리는 것.

//근데 이게 Optional이랑 뭔 상관?
//오직 Optional 타입만 nil값을 반환할 수 있다. 일반 자료형은 nil값을 리턴할 수 없다. 때문에 오류 발생의 소지가 조금이라도 있으면 Optional로 정의해야 한다.

print(krCode) //Optional("kr")
print(deCode) //nil

//이름이 있을 수도 있고 없을 수도 있는 타입 선언 -> (자료형)?

var name: String? = nil //변수 name의 value가 있을 수도 있고 없을 수도 있으므로 Optional타입 선언

name = "gom"

print(name) //Optional("gom")

name = nil

print(name) //nil

//이 타입이 실무에서 어떻게 사용되는지는 직접 프로젝트를 진행하던가 해야 알 수 있을 것 같다.

//함수, 클로저 (function, closure)
/*
 함수의 정의와 호출
 func 함수명(파라미터: 형) -> 리턴타입 {
 
 }
 
 파라미터를 받을 수도 안 받을수도, 리턴이 있을수도 없을수도 있으니 상황에 맞게 사용할 것.
 
 */

func printGugu(dan: Int) {
    for i in 1...9 {
        print("\(dan) * \(i) = \(dan * i)")
    }
}

printGugu(dan: 5)

func rollDice () -> Int {
    return Int.random(in: 1...6)
}

let random = rollDice()

print(random)

/*
 클로저는 이름이 존재하지 않는 함수? 뭔 소리지...?
 */

//함수
func call(name: String) {
    print("hello, \(name)")
}

call(name: "Gom")

// 상수에 함수를 할당하고 해당 상수를 호출
let callName = call
callName("Serker")

// 상수에 클로저를 할당하고, 해당 상수 호출

let callName2 = { (name: String) in
    print("hi, \(name)")
}

callName2("lalaion")

//in으로 파라미터 및 리턴 타입과 실제 클로저 코드를 분리한다.
//배열, 딕셔너리 같은 컬렉션 타입(array, dictionary, set)과 함께 filter, map, reduce 메소드 사용시 자주 활용된다. 아래는 예시

//filter
let members = ["botan", "marin", "gura"]
let nameStartsWithM = members.filter { name in
    return name.hasPrefix("m")
}

print(nameStartsWithM)

//map
let prices = [1000, 2000, 3000]
let doubledPrices = prices.map { price in
    return price * 2
}

print(doubledPrices)

//reduce
let revenues = [100, 200, 300]
let totalRevenue = revenues.reduce(0) {partialResult, next in
    return partialResult + next
}

print(totalRevenue)


/*
 구조체
 사용자가 원하는 데이터타입을 만들때 사용한다.
 인스턴스의 값(프로퍼티)을 저장하거나 기능(메소드)를 제공하고 이를 "캡슐화"할 수 있는, 스위프트에서 제공하는 타입
 struct 키워드를 이용해서 선언한다.
 */

struct Album {
    //Member variables
    //stored property
    
    let title: String
    let artist: String
    var isReleased = false
    
    func description() -> String {
        return "\(title) by \(artist)"
    }
    
    //구조체 내부 멤버 변수의 값을 변경하는 경우, mutating 키워드를 이용한다.
    //여기서는 isReleased가 상수가 아닌 변수이므로 mutating 키워드를 이용해 value를 변경한다.
    
    mutating func release() {
        self.isReleased = true
    }
}

var reWind = Album(title: "Re:wind", artist: "Isedol")
print(reWind.description())

print(reWind.isReleased)
reWind.release()
print(reWind.isReleased)
print("===================")
/*
 1. struct. 구조체를 통해 앨범의 멤버 변수(노래 제목, 가수)의 타입을 String으로 정한다.
 2. 구조체 내부에 상세 설명을 표시하는 함수 description을 선언하고 title by artist를 String으로 리턴한다.
 3. 앨범 구조체 내부에는 제목과 가수가 상수로, 발매 여부를 묻는 isRelease라는 변수가 선언되어 있다.
 4. isRelease의 default 값은 false로 선언되어 있는데, 이를 변경하는 함수를 작성하려면 mutating 키워드를 사용한다.
 5. mutating func release()의 경우, isReleased를 true로 변경하는 기능을 제공한다.
 
 Question. self란 구조체 블록 내부에서 자기 자신을 가리킬때 사용하는 키워드인가? 자바의 this 같은...?
 
 6. reWind라는 변수는 앨범 구조체에 타이틀과 가수 파라미터를 받은 다음 아래행에서 상세 정보를 출력한다.
 7. 그리고 mutating func　선언을 한 relase함수를 호출해 isRelease의 밸류를 false에서 true로 변경한다.
 
 Question. 내 자신이 이해한 흐름이 이게 맞는건가...?
 */

/*
 클래스
 사용자가 원하는 데이터타입을 만들때 사용한다는 점에서 구조체와 유사. 하지만 몇 가지 차이점이 있다.
 
 1. 클래스는 상속이 가능하다. 구조체는 불가능하다.
 2. 클래스는 참조(reference)하고 구조체는 복사(copy)한다.
 3. 클래스는 생성자(initializer)를 기본으로 만들어주지 않는다. (클래스 또는 구조첼ㄹ 생성할 때 사용하는 특별한 함수로, init 키워드로 선언한다.)
 */

class Employee {
    var name: String
    var hours: Int
    
    //생성자, 구조체는 이 부분이 없어도 만들 수 있지만 클래스는 이 부분을 작업자가 직접 만들어야 한다.
    init(name: String, hours: Int) {
        self.name = name
        self.hours = hours
    }
    
    func work() {
        print("I'm working now...")
    }
    
    func summary() {
        print("I work \(self.hours) hours a day")
    }
}

//클래스 상속
class iOSDeveloper: Employee {
    
    override func work() {
        print("I'm developing iOS app now")
    }
    
    override func summary() {
        print("I work \(self.hours/2) hours a day")
    }
}

struct Phone {
    var modelName: String
    var manufacturer: String
    var version: Double = 1.0
}

let normalWorker = Employee(name: "gom", hours: 8)
normalWorker.work()
normalWorker.summary()

let developer = iOSDeveloper(name: "serker", hours: 8)
developer.work()
developer.summary()

print("---------------------")
//reference vs. copy
var iPhone1 = Phone(modelName: "iPhone 13", manufacturer: "Apple")
var iPhone2 = iPhone1
iPhone2.modelName = "iPhone 14"

print(iPhone2.modelName)
print(iPhone1.modelName)
print("---------------------")
// 아이폰1과 아이폰2는 다른 객체

var jrDeveloper1 = iOSDeveloper(name: "john", hours: 8)
var jrDeveloper2 = jrDeveloper1
jrDeveloper1.name = "Kenny"
print(jrDeveloper1.name)
print(jrDeveloper2.name)
print("---------------------")
// 개발1과 개발2는 같은 객체. 따라서 하나를 변경하면 하나도 주르륵.
