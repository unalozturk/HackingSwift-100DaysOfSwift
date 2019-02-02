import UIKit

//Arrays
let unal = "Unal"
let aykut = "Aykut"

let group = [unal,aykut]
print(group)

let typeArray:  [String] = ["test","test1"]
print(typeArray)


//Sets
let colors = Set(["green", "blue", "red"])

let finalColors = Set(["green", "blue", "red", "blue"]) // second blue is not added because Sets are collections of values just like arrays, except they have two differences: Items aren’t stored in any order; they are stored in what is effectively a random order. No item can appear twice in a set; all items must be unique.

//Tuples
var name  = (first : "Taylor", second : "Swift" )
name.0
name.second

//Dictionary
let user : [String : Any] = [
    "name" : "Taylor Swift",
    "height" : 1.78,
    "weight" : 55,
]
print(user)
print(user["name"])

//Dictionary default value
user["test", default : "testttt"] // user["test"] is return nil if we put default value to dictionary it will return if it is nil.

//Creating Empty Collections
var team = [String: String] () //Empty dictionary
team["Unal"] = "Besiktas"

var emptyArray = [Int]() //Empty array
emptyArray.append(12)

var emptySet = Set<String>() //Empty Set

//Enum
enum Result {
    case success
    case failure
}
let result = Result.failure

//Enum Associated values
enum Activity {
    case bored
    case running
    case talking
    case singing
}
//To
enum Activityy {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activityy.talking(topic: "Football")
print(talking)

//Enum raw values
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
print(Planet.venus.rawValue)


