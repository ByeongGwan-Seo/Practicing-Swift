import UIKit

var greeting = "Hello, playground"

let isMan = true
let isHuman = false

var isSingle = true

isSingle.toggle()

isSingle

//.toggle은 불리언 값에다 not을 때리는 내장함수

//isMan.toggle()
//isHuman.toggle()

//위와 같은 경우엔 isMan과 isHuman이 let으로 선언, 즉 상수로 선언되었기 때문에 toggle 내장함수를 사용할 수 없다.

let difficulty = "hard"
let age = 70
let message = "\(age) 할머니도 배우는 개발은 \(difficulty)"

message

print(message)

//array
let ages = [3, 20, 60]
let colors = ["red", "blue", "green"]

let color = colors[1]

print(color)

//dictionary (key : value)

let languageCode = [
    "korea":"kor",
    "japan":"jp",
    "english":"en"
]

let lc = languageCode["korea"]

print(lc)
//왜 Optional("kor")이 나오는걸까...?

//초기화
var emptyArr: [Int] = []
var emptyDictionary: [String:Any] = [:]

//enum : 서로 관계있는 값들을 모아서 표현한 것. 특정 타입들을 표시할때 사용하기 좋음

enum WeekDay {
    case mon
    case tue
    case wed
    case thu
    case fri
}

var today: WeekDay = .fri
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


