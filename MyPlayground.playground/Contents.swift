//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let apples = 3
let oranges = 4
let applesum = "I have \(apples) apples"
let fruits = "I have \(apples + oranges) fruits"

let tmpArray = [1,2,3,4,5]
var initNum = 0
for i in tmpArray
{
    initNum += i
    print(i)
}
print(initNum)


var optionString: String?  = "hello"
print(optionString)
print(optionString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

var optionalName2: String? = nil
var saysomething = "hi"
let name2 = optionalName2
if name2 != nil {
    saysomething = "hi, i won't appear"
}else{
    saysomething = "hi, i'm here , \(name2)"
}

var secondForLoop = 0
for (var i = 0; i < 4; ++i) {
    secondForLoop += i
}
print(secondForLoop)



class Demo {
    var vv = 0
    
    init(testvalue: Int){
        self.vv = testvalue
    }
    
    func testfunc(value111: Int) -> String {
        return "the value is \(value111)!"
    }
}

var demo = Demo(testvalue:3)
demo.vv
demo.testfunc(2222)


class NameShape {
    var numberOfSides: Int = 0
    var name: String = ""
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A sharp with \(name) has \(numberOfSides) sides."
    }
}
var nameShape = NameShape(name: "circle")
nameShape.simpleDescription()

class Square:NameShape {
    var sideLength: Double
    init(name: String, sideLength: Double) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    func area()-> Double{
        return sideLength * Double(numberOfSides)
    }
    
    override func simpleDescription() -> String {
        return " overite A sharp with \(name) has \(numberOfSides) sides has \(area())."
    }
}
var square = Square(name: "tran", sideLength: 3)
square.area()
square.simpleDescription()



