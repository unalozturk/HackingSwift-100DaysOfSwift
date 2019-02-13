
//Handling Missing Data
var age : Int? = nil
age = 38

//Unwrapping Optional
var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

//Unwrapping Guard
//the major difference between if let and guard let is that your unwrapped optional remains usable after the guard code.
func greet(_ name: String?) {
    guard let unwrapped = name else { print("You didn't provide a name!");  return  }
    print("Hello \(unwrapped)")
}
greet(nil)
greet("Unal")

//Force Unwrapping
let str = "5"
let num = Int(str)
let numm = Int(str)!
print(num)
print(numm)


//Implicitly unwrapped optionals
var agee: Int! = nil
print(agee)
agee = 12
print(agee)

//Nil Coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous"

//Optional Chaining
let usernames = ["Unal","Songul","Kazım"]
let uname = usernames.first?.uppercased()



//Optional try
enum PasswordError : Error {
    case obvious
}

func checkPassword(_ password:String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh")
}

try! checkPassword("test")
print("OK!")


//Failable initializer
//This is a failable initializer: an initializer that might work or might not. You can write these in your own structs and classes by using init?() rather than init(), and return nil if something goes wrong
struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

//Typecasting
class Animal { }
class Fish : Animal { }

class Dog : Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Dog(),Fish(),Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}



