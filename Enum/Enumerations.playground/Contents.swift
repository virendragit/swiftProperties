import UIKit

enum CompassPoint{
    
    
    case north
    case south
    case east
    case west
    
}
 
enum Planet{
    
    case mercury, venus, earth
}

print(Planet.venus)


var directionToHead = CompassPoint.west
directionToHead = .east

directionToHead = .south

switch directionToHead {
case .east:
    print("east is the direction")
    case .west:
    print("west is the direction")
    case .north:
    print("north is the direction")
    case .south:
    print("south is the direction")

}

// Iterating over enumeration

enum Beverages : CaseIterable {
    
    case coffee, tea, juice
}

let numberOfChoices = Beverages.allCases.count

print("\(numberOfChoices) beverages are available")


for Beveage in Beverages.allCases {
    print(Beveage)
}



