import Cocoa

func ransome(str1:String, str2:String) -> Bool{
    var hashMap:[Character:Int] = [:]
    
    for strChar in str1{
        if hashMap[strChar] != nil {
            hashMap[strChar]! += 1
        } else {
            hashMap[strChar] = 1
        }
    }
    
    for charStr in str2{
        if hashMap[charStr] == nil || hashMap[charStr] == 0{
            return false
        } else {
            hashMap[charStr]! -= 1
        }
    }
    return true
}

print(ransome(str1: "catnip", str2: "dog"))
