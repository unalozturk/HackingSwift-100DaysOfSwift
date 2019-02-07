
//Creating Basic Closures
let driving = {
    print("I'm driving in my car")
}

driving()

//Accepting parameters in Closures
let drivingg = { (place: String) in
    print("I'm going to \(place) in my car")
}
drivingg("London")

//Returning values from closures
let drivingWithMessage = { (place : String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithMessage("London")
print(message)

//Closures as Parameters
let drivinggg = {
    print("I'm driving in my car")
}
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: drivinggg)

//Trailling closure syntax
func travell(action : () -> Void ) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travell {
    print("I'm driving to London")
}



