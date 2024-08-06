import Cocoa

var str = ["G","o","k","u","l"]

func reverseAString( str:inout [String]) -> [String]{
    var leftPointer = 0
    var rightPointer = str.count - 1
    
    while(leftPointer < rightPointer){
        let temp = str[leftPointer]
        str[leftPointer] = str[rightPointer]
        str[rightPointer] = temp
        leftPointer += 1
        rightPointer -= 1
    }
    return str
}

print(reverseAString(str: &str))

