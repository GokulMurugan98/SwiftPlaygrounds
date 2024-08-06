import Cocoa

let details = ["7868190130M7522","5303914400F9211","9273338290F4010"]

func countSeniors(_ details: [String]) -> Int {
    
    var numberOfSeniors = 0
    for detail in details{
        let (index1,index2) = (detail.index(detail.startIndex, offsetBy: 11), detail.index(detail.startIndex, offsetBy: 12))
        let age = "\(detail[index1])\(detail[index2])"
        if Int(age)! > 60{
            numberOfSeniors += 1
        }
    }
    return numberOfSeniors
}

print(countSeniors(details))
