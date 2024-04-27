import Cocoa

func getSum(array:[Int], result:Int) -> [Int]?{
    var pointer1 = 0
    var pointer2 = array.count - 1

    while (pointer1 < pointer2){
        if (array[pointer1] + array[pointer2]) == result{
            return [array[pointer1], array[pointer2]]
        } else if (array[pointer1] + array[pointer2]) > result{
            pointer2 -= 1
        } else {
          pointer1 += 1
        }
    }
    return nil
}

print(getSum(array: [1,2,4,7], result: 10))
