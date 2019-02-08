

//Creating your own struct
struct sport {
    var name : String
}
var tennis = sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn Tennis"
print(tennis.name)

//Computed Properties
struct sportt {
    var name : String
    var isOlympicSport : Bool
    
    var olympicStatus : String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
let chessBoxing = sportt(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//Property Observers
struct Progress {
    var task : String
    var amount : Int {
        didSet {
            print("\(task) is now \(amount) complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 20
progress.amount = 70
progress.amount = 100


//Methods
struct City {
    var population : Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
london.collectTaxes()


//Mutating Methods
struct Person {
    var name : String
    
    mutating func makeAnonymus() {
        name = "Anonymus"
    }
}

var person = Person(name: "Unal")
person.makeAnonymus()
print(person.name)


//Properties and methods of strings
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


//Properties and methods of arrays
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.index(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)


