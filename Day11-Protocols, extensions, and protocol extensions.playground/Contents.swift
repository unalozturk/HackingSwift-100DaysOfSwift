

//Protocols
protocol Identifiable {
    var id : String { get set }
}

struct User : Identifiable {
    var id: String
}

func displayID(thing : Identifiable) {
    print("My ID is \(thing.id)")
}

//Protocol Inheritance
//One protocol can inherit from another in a process known as protocol inheritance. Unlike with classes, you can inherit from multiple protocols at the same time before you add your own customizations on top.
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}
protocol Employee: Payable, NeedsTraining, HasVacation { }


//Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
    
    func isEven() -> Bool {
        return self % 2 == 0
    }
}

let number = 8
number.squared()
number.isEven()


//Protocol extensions
let pythons = ["Eric","Graham","John","Michael","Terry","Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()


//Protocol-oriented programming
protocol Identifiablee {
    var id : String { get set }
    func identity()
}

extension Identifiablee {
    func identity() {
        print("My ID is \(id)")
    }
}

struct Userr : Identifiablee {
    var id: String
    
}

let unal = Userr(id: "1234")
unal.identity()



