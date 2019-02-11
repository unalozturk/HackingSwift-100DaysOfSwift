

//Creating your own classes
class Dog {
    
    var name : String
    var breed: String
    
    init(name : String , breed : String) {
        self.name = name
        self.breed = breed
    }
    
}
let poppy = Dog(name: "Poppy", breed: "Poodle")
print(poppy.name)


//Class Inheritance
class Poodle : Dog {
    init(name : String) {
        super.init(name: name , breed: "Poodle")
    }
}

//Overriding Methods
class Dogg {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodlee: Dogg {
    override func makeNoise() {
        print("Yip!")
    }
}
let poodlee = Poodlee()
poodlee.makeNoise()


//Final Classes
//Swift gives us a final keyword just for this purpose: when you declare a class as being final, no other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.
final class Dogggg {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


//Cpoying Objects
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Unal Ozturk"
print(singer.name)


//Deinitializer
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//Mutability
class Singerr {
    let name = "Taylor Swift"
}

let taylor = Singerr()
//taylor.name = "Ed Sheeran"
print(taylor.name)




