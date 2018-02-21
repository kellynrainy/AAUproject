//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


extension Int{
    func isEven()->Bool{
        return self % 2 == 0
    }
}

2.isEven()
3.isEven()
77.isEven()
(-8).isEven()


class Planet {
    var name : String
    var color : String
    
    var description: String {
        return "\(name) is \(color)."
    }
    init(){
        name = "Earth"
        color = "blue"
    }
}
let somePlanet = Planet()
print("\(somePlanet.description)")


