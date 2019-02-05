import UIKit

//For loops
let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["1980","Hello there", "Life is good"]

for album in albums {
    print(album)
}

for _ in 1...5 {
    print("Plays")
}

//While loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

//Repeat Loops
repeat {
    print(number)
    number += 1
} while number <= 20

//Exiting Loops
var countdown = 10
while countdown >= 0 {
    print(countdown)
    countdown -= 1
    
    if countdown == 4 {
        print("I'm bored")
        break
    }
}

//Exiting Multiple Loops
outerloop : for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        if product == 20 {
            print("It's bullseye")
            break outerloop
        }
    }
}

//Skipping Items
for i in 2...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

//Infinite Loops
var counter = 0
while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}

