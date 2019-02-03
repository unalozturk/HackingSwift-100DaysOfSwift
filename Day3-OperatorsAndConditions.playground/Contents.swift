import UIKit

//Aritmetic Operators
let firstScore = 12
let secondSconre = 4

let total = firstScore + secondSconre

let difference = firstScore - secondSconre

let times = firstScore * secondSconre

let divided = firstScore / secondSconre

let reminder = 13 % 2


//Operator Overloading

let meaningOfLife = 42

let doubleMeaning = 42 + 42

let fakers = "Fakers gonna"
let actions = fakers + "fake"

let firstHalf = ["asd","dsd"]
let secondHalf = ["wed","ted"]

let totalArray = firstHalf + secondHalf

//Compoud assignment operators

var number = 95
number -= 5

var quote = "The rain"
quote += " heavly"


//Comparison Operators
let firstNumber = 6
let secondNumber = 12

firstNumber == secondNumber
firstNumber != secondNumber
firstNumber < secondNumber
firstNumber >= secondNumber

"Taylor" < "Swift"

//Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//Combining Conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 21 {
    print("Both are over 18")
}
if age1 > 18 || age2 > 18 {
    print("One of them over 18")
}

//The ternary operator
let oneCard = 11
let anotherCard = 12
print(anotherCard == oneCard ? "Cards are the same" : "Cards are not same")

//Switch statement
//Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this:
let weather = "Sunny"

switch weather {
case "Rain":
    print("It's rainy")
case "Snow":
    print("It's Snow")
case "Sunny":
    print("It's sunny")
    fallthrough
default:
    print("Enjoy your day")
}

//Range Operators
//For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.
let score = 85

switch score {
case 0..<50:
    print("You fall")
case 50..<85:
    print("You did good.")
default:
    print("You did great")
}
