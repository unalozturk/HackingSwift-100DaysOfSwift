
//Initializers
struct User {
    var username : String
    
    init() {
        username = "Anonymus"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "Unal"
print(user.username)

//Referring to the current instance
struct Person {
    var name : String
    init(name : String) {
        print("\(name) was born!")
        self.name = name
        
    }
}

//Lazy Properties
struct FamilyTree {
    init() {
        print("Creating family tree.")
    }
}

struct Personn {
    var name : String
    lazy var familyTree = FamilyTree()
    
    init(name : String) {
        self.name = name
    }
}
var ed = Personn(name: "Ed")
ed.familyTree

//Static properties and methods
struct Student {
    static var classSize = 0
    var name : String
    init(name : String) {
        self.name = name
        Student.classSize += 1
    }
}
var unal = Student(name: "Unal")
var taylor = Student(name: "Taylor")
print(Student.classSize)

//Access Control
struct Personnn {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identity() -> String {
        return "My Social security number is \(id)"
    }
    
}

var unalWithID = Personnn(id: "1234")
unalWithID.identity()


