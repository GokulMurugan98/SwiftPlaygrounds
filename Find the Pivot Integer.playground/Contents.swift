import Cocoa



func pivotInteger(_ n: Int) -> Int {
    var sum = 0
    var temp = 0
    for i in 1...n{
        sum = sum + i
    }
    
    for i in 1...n{
        if (sum-i) == temp{
            return i
        }
        sum -= i
        temp += i
    }
    return -1
}

print(pivotInteger(288))
