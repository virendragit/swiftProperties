import UIKit
import Foundation

class Circle {
    //stored properties
    var radius: Double = 0{
        willSet{
            print("About is assign to new value: \(newValue)")
        }
        didSet{
            if radius < 0 {
                radius = oldValue
            }
        }
    }
    //computed properties
    var area: Double{
        get{
            return radius * radius * Double.pi
        }
        set(newValue){
            print("::\(newValue)")
            radius = sqrt(newValue / Double.pi)
        }
    }
}

let circle = Circle()
circle.radius = 9
circle.area = 314.159265358979

print("radius: \(circle.radius)")
print("area:\(circle.area)")

//initializer

class Shape{
    
    var countOfShape: Double
    
    init(countOfShape: Double) {
        self.countOfShape = countOfShape
    }
    
}

let shape = Shape(countOfShape: 2.0)


//lazy var

class TestClass{
    
   lazy var testString : String = {
        print("About to initialize the propperty")
        return "TestString"
    }()
    
    var testString2 : String = "testString2"
    
    //type / static / class property
    static var testString3 : String = "testString3"
    
}


let testclass = TestClass()

print("\(testclass.testString2)")

print("\(testclass.testString)")

print("\(testclass.testString)")

print(TestClass.testString3)




