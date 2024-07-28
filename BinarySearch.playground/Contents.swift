import Cocoa

let array = [-1,-5,0,7,5,1,3,2,4]

func search(array:[Int], target:Int) -> Int{
    var leftPointer = 0
    var rightPointer = array.count-1
    
    
    while(leftPointer<=rightPointer){
        let midPointer = (leftPointer + rightPointer) / 2
        if  array[midPointer] == target{
            return midPointer
        } else if  array[midPointer] > target{
            rightPointer = midPointer - 1
            
        } else {
            leftPointer = midPointer + 1
        }
    }
    return leftPointer
}

//print(search(array: array, target: 2))


func closestPositiveInteger(arr:[Int]) -> Int{
    var smallestNumber = 1
    var foundInteger:Bool = false
    var integer:[Int:Bool] = [:]
    for num in arr{
        if !(num <= 0 ){
            integer[num] = true
        }
    }
    while(!foundInteger){
        if (integer[smallestNumber] == nil){
            foundInteger.toggle()
            return smallestNumber
        } else {
            smallestNumber = smallestNumber + 1
        }
    }
}

print(type(of: closestPositiveInteger(arr: array)) )
