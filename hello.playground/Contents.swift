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
let message = "(age) 할머니도 배우는 개발은 ¥(difficulty)"
