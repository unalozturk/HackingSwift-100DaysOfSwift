
//Functions
func printHelp() {
    let message = """
asdasds
adada
"""
    print(message)
}

printHelp()

//Accepting Parameters
func square(number: Int) {
    print(number * number)
}
square(number: 4)

//Returning Values
func squaree(number : Int) -> Int {
    return number * number
}

let fourSquare = squaree(number: 4)
print(fourSquare)

//Parameter Labels
func squareee(to number: Int) -> Int {
    return number * number
}

let fiveSquare = squareee(to: 5)
print(fiveSquare)

//Omitting Parameter Labels
func greet(_ person : String ) {
    print("Hello \(person)!")
}
greet("Unal")

//Default Values
func greett(_ person : String , nicely : Bool = true) {
    if nicely == true {
        print("Hello \(person)!")
    } else {
        print("Oh no , again \(person)")
    }
}
greett("Unal")
greett("Hasan", nicely: false)

//Variadic Functions
func squareee(numbers : Int... ) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
squareee(numbers: 1, 2, 3, 4, 5)

//Writing Throwing Functions
enum PasswordError : Error {
    case obvious
}

func checkPassword(_ password : String ) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}
//checkPassword("password")

//Running Throwing Functions
do {
    try checkPassword("password")
    print("This password is good!")
} catch {
    print("You can't use that password")
}

//Intout Parameters
var fourNumber = 4
func doubleInPlace(number : inout Int ) {
    number *= 2
}
doubleInPlace(number: &fourNumber)
print(fourNumber)


