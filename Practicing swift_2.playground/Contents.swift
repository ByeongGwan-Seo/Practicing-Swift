import UIKit

var greeting = "Hello, playground"

//stored property vs computed property
/*
 stored property
 클래스와 구조체가 값을 저장하고 있는 프로퍼티
 
 computed property
 값을 따로 저장하지는 않고, stored property를 활용하거나 특정값을 전달할때 사용하는 프로퍼티
 */

struct Watch {
    let model: String
    let manufacturer: String
    
    var description: String {
        return "\(model) by \(manufacturer)"
    }
}

struct Person {
    let firstName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}

let appleWatch = Watch(model: "Watch 7", manufacturer: "Apple")
let human = Person(firstName: "Gom", lastName: "Serker")

print(appleWatch.description)
print(human.fullName)
print("---------------------")

//Question. model, manufacturer, firstName, lastName이 stored property. description, fullName이 computed property가 되는 건가?

/*
 프로토콜(protocol)
 
 제공하고 싶은 역할(기능, 속성)을 미리 정의해 놓은 것
 이후에 다른 타입이 해당 프로토콜의 역할을 제공하고 싶으면 conform 해서 제공한다.
 Question. 자바의 인터페이스 같은 건가? 클래스 상속과 프로토콜에는 무슨 차이가 있는가?
 */

protocol Coach {
    var name: String {get set}
    var currentTeam: String{get}
    func training()
    func direct()
}

struct Mourinho: Coach {
    var name: String = "Jose Mourinho"
    var currentTeam: String = "AS Roma"
    
    func training() {
        print("Training Player...")
    }
    
    func direct() {
        print("Direct Game")
    }
}

let mourinho = Mourinho()
print("\(mourinho.name), \(mourinho.currentTeam)")
mourinho.training()
mourinho.direct()
print("---------------------")
