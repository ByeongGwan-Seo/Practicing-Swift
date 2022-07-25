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
