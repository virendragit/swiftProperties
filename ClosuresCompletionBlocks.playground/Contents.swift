import UIKit


func filterGraterThanValue(value: Int, numbers:[Int]) -> [Int] {
    
    
    var filterSetOfNumbers = [Int]()
    
    for num in numbers{
   
        if num > value {
            filterSetOfNumbers.append(num)
        }
    }
    
    return filterSetOfNumbers
}

//let filertedList = filterGraterThanValue(value: 2, numbers: [1,2,3,5,7,9,10,12])
//print(filertedList)

func filteredWithPredicateClouser(clouser: (Int) -> Bool, numbers: [Int]) -> [Int]{
    var filterNumbers = [Int]()
    for num in numbers{
        if clouser(num) {
            filterNumbers.append(num)
        }
    }
    return filterNumbers
}

func greaterThanThree(value: Int) -> Bool {
    return value > 3
}

func divisibleByfive(value: Int) -> Bool{
    return value % 5 == 0
}

//let filertedList = filteredWithPredicateClouser(clouser: greaterThanThree, numbers: [10,5,1,2,0])
let filertedList = filteredWithPredicateClouser(clouser: divisibleByfive, numbers: [1,2,15,20,30])
print(filertedList)


// Escaping clouser

func escaping(closure: @escaping(String) -> Void){
    
    print("fucntion start")
    
    DispatchQueue.main.async {
        print("closure called")
    }
    
    print("function end")
}

escaping{(value) in
    print(value)
}

