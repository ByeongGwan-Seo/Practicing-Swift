import UIKit

protocol Observable {
    func notify (post: String)
    func add (follower: Follower)
    func remove (follower: Follower)
}

//연예인 -> Observable protocol을 채용함. 내부에 followers 목록을 가지고 있음
class Celebrity: Observable {
    let name: String
    var followers: [Follower] = []
    
    init(name: String) {
        self.name = name
    }
    
    func notify(post: String) {
        for follower in followers {
            follower.update(post: post)
        }
    }
    
    func add(follower: Follower) {
        self.followers.append(follower)
    }
    
    func remove(follower: Follower) {
        guard let removeIndex = followers.firstIndex(where: { $0 === follower}) else {return}
        self.followers.remove(at: removeIndex)
    }
}

protocol Followable {
    func update (post: String)
}

//연예인을 팔로우하는 사람. Followable 프로토콜을 채용
class Follower: Followable {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func update(post: String) {
        print("I'm \(name) -> \(post)")
    }
}

let mike = Celebrity(name: "Michael J. Fox")
let walts = Celebrity(name: "Christopher Walts")

mike.add(follower: Follower(name: "gom1"))
mike.add(follower: Follower(name: "gom2"))
mike.add(follower: Follower(name: "gom3"))

mike.notify(post: "D is silence")
print("")
walts.add(follower: Follower(name: "gom4"))
walts.notify(post: "I couldn't resist")


