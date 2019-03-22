

//Capture lists in Swift: what’s the difference between weak, strong, and unowned references?
//Link: https://www.hackingwithswift.com/articles/179/capture-lists-in-swift-whats-the-difference-between-weak-strong-and-unowned-references

import UIKit

class singer {
    func playSong() {
        print("shake it off!!!")
    }
}

func sing() -> () -> Void {
    let taylor = singer()
    
    let singing = {
        taylor.playSong()
        return
    }
    
    return singing
}

let singFunction = sing()
singFunction()


//Strong Capturing
func singStrong() -> () -> Void {
    let taylor = singer()
    
    let singing = {
        taylor.playSong()
        return
    }
    
    return singing
}

//Weak Capturing
func singWeak() -> () -> Void {
    let taylor = singer()
    
    let singing = { [weak taylor] in
        taylor?.playSong()
        return
    }
    
    return singing
}

let singWeakFunction = singWeak()
singWeakFunction()

//Unowned Capturing
func singUnowned() -> () -> Void {
    let taylor = singer()
    
    let singing = { [unowned taylor] in
        taylor.playSong()
        return
    }
    
    return singing
}

//let singUnownedFunction = singUnowned()
//singUnownedFunction()


/*
 Common problems
 There are four problems folks commonly hit when using closure capturing:
 
 They aren’t sure where to use capture lists when closures accept parameters.
 They make strong reference cycles, causing memory to get eaten up.
 They accidentally use strong references, particularly when using multiple captures.
 They make copies of closures and share captured data.
 Let’s walk through each of those with some code examples, so you can see what happens.
*/


//Capture lists alongside parameters
// writeToLog { [weak self] user, message in
//    self?.addToLog("\(user) triggered event: \(message)")
//}

//Strong Reference Cycles
class House {
    var ownerDetails: (() -> Void)?
    
    func printDetails() {
       print("This is a great house.")
    }
    
    deinit {
         print("I'm being demolished!")
    }
}

class Owner {
    var houseDetails: (() -> Void)?
    
    func printDetails() {
        print("I own a house.")
    }
    
    deinit {
        print("I'm dying!")
    }
}

print("Creating a house and an owner")

do {
    let house = House()
    let owner = Owner()
}
print("Done.")


print("Creating a house and an owner")

do {
    let house = House()
    let owner = Owner()
    house.ownerDetails = owner.printDetails
    owner.houseDetails = house.printDetails
}

print("Done")


print("Creating a house and an owner")

do {
    let house = House()
    let owner = Owner()
    house.ownerDetails = { [weak owner] in owner?.printDetails() }
    owner.houseDetails = { [weak house] in house?.printDetails() }
}

print("Done")


//Accidental Strong Reference
func singAccidentalStrongReference() -> () -> Void {
    let taylor = singer()
    let adele = singer()
    
    let singing = { [unowned taylor, unowned adele] in
        taylor.playSong()
        adele.playSong()
        return
    }
    
    return singing
}

//Copies of closures
var numberOfLinesLogged = 0
let logger1 = {
    numberOfLinesLogged += 1
    print("Lined logged: \(numberOfLinesLogged)")
}
logger1()
let logger2 = logger1
logger2()
logger1()
logger2()

/*
 When to use strong, when to use weak, when to use unowned
 Now that you understand how everything works, let’s try to summarize whether to use strong, weak, or unowned references:
 
 If you know for sure your captured value will never go away while the closure has any chance of being called, you can use unowned. This is really only for the handful of times when weak would cause annoyances to use, but even when you could use guard let inside the closure with a weakly captured variable.
 If you have a strong reference cycle situation – where thing A owns thing B and thing B owns thing A – then one of the two should use weak capturing. This should usually be whichever of the two will be destroyed first, so if view controller A presents view controller B, view controller B might hold a weak reference back to A.
 If there’s no chance of a strong reference cycle you can use strong capturing. For example, performing animation won’t cause self to be retained inside the animation closure, so you can use strong capturing.
 If you’re not sure which to use, start out with weak and change only if you need to.
*/
