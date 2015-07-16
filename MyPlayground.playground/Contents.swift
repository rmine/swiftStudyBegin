//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let apples = 3
let oranges = 4
let applesum = "I have \(apples) apples"
let fruits = "I have \(apples + oranges) fruits"

let tmpArray = [1,2,3,4,5]
print(tmpArray.endIndex)
print(tmpArray.startIndex)
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
        numberOfSides = 4
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

class Triangle:NameShape {
    var sideLength: Double = 0.0
    init(name: String, sideLength: Double) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "triangle override \(name) has \(numberOfSides) sides == \(perimeter)"
    }
}
var triangle = Triangle(name: "triangle", sideLength: 4)
triangle.perimeter
triangle.perimeter = 18
triangle.simpleDescription()

class TriangleAndSquare {
    var triangle : Triangle{
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square{
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(name: String, size: Double){
        square = Square(name: name, sideLength: size)
        triangle = Triangle(name: name, sideLength: size)
    }
}
var triangleAndSquare = TriangleAndSquare(name: "r && s", size: 7)
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(name: "ttttssss", sideLength: 8)
triangleAndSquare.square.sideLength

class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, time: Int) -> Int{
        return amount * time
    }
}
var counter = Counter()
counter.incrementBy(10, time: 2)

let optionalSquare: Square? = Square(name: "tests", sideLength: 30)
let sideLength = optionalSquare?.sideLength

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue
let aceDesc = ace.simpleDescription()

let ac22 = Rank.Ten
let ac22RawValue = ac22.rawValue
let ac22Desc = ac22.simpleDescription()

let rankkey = Rank(rawValue: 3)
rankkey?.simpleDescription()


enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

enum SuitTest {
    case ASD, GTH, MKM
    func simleDesc() -> String {
        switch self {
        case .ASD:
                return "ASD"
            case .GTH:
                return "GTH"
            case .MKM:
                return "Diamond1"
            default:
                return "Noting!"
        }
    }
}
let asd = SuitTest.ASD
let asdDesc = asd.simleDesc()

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()


enum ServerResponse {
    case Result(String, String)
    case Error(String)
}
let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese.")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure...  \(error)"
}


var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
print(letters)


let normal = "Could you help me, please?"
let upcase = "COULD YOU HELP ME, PLEASE?"
print(normal == upcase)

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubsetOf(farmAnimals)
farmAnimals.isSupersetOf(houseAnimals)
farmAnimals.isDisjointWith(cityAnimals)



