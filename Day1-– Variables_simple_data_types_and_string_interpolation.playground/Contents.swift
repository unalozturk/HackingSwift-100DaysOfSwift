import UIKit

var str = "This is variable, we can change freely"
str = "It has been changed"

//Swift is type safe language
var age = 38;
var population =  8_000_000
print(type(of: population))

//Multi-line string
var str1 = """
This is
Multi line
String
"""

var str2 = """
This is \
Sparta \
U got it.
"""
print(str1)
print(str2)


//Doubles and Booleans

//Doubles is short for "double - precision floating number."
var pi = 3.1

var awesome = true

//String interpolation
var score = 85
var myScore = "My score is \(score) " //string interpolation isn’t just limited to placing variables – you can actually run code inside there. Later on , we will see

//Constant
let taylor = "Swift"

//Type annotation
let album : String = "Reputation"
let year  : Int = 1999
let height: Double = 1.78
let taylorRock : Bool = true

//
var coleridge = """
Water, water, everywhere
and not a drop to drink
"""
print(coleridge)



