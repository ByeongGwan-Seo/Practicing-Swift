import UIKit

var greeting = "Hello, playground"

var num = 5
num = 1

let name = "gom"

//var is variable
//let is constant
//자바스크립트랑 안 헷갈리게 조심할것
//상수 사용을 권장함

//문자열은 ""로 선언, 자바랑 다르게 변/상수에 입력된 값에 따라 형태가 결정됨.


let quote = "i'm god damn genius"


let otherNum = num + 2

let num2 = 0.3

let halfOfNum = otherNum / 2

print(num)
print(greeting)
print(name)

protocol ScheduleDelegate {
    func gotoSchool()
    func lunchTime()
    func afterSchool()
}

class NamJu {
    var girlFriend: ScheduleDelegate? = nil
    func oneday() {
        if let gf = self.girlFriend {
            gf.gotoSchool()
            gf.lunchTime()
            gf.afterSchool()
        } else {
            print("bicycle alone")
            print("alone eat")
            print("going home alone")
        }
    }
}

class GirlFriend:ScheduleDelegate {
    func gotoSchool() {
        print("together subway")
    }
    func lunchTime() {
        print("eat together")
    }
    func afterSchool() {
        print("go to theater")
    }
}

var namJu = NamJu()
var girl = GirlFriend()

print("without gf")
namJu.oneday()
namJu.girlFriend = girl
print("with gf")
namJu.oneday()

