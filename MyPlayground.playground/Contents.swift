func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
    var largestArray = (nums1.count < nums2.count) ? nums2 : nums1
    
    var i = 0
    var j = 0
    for index in 0..<largestArray.count{
        print(nums1[i])
        print(nums2[j])
        print(i)
        print(j)
        print("**************")
        if nums1[i] == nums2[j]{
            return nums1[i]
        } else if nums1[i] > nums2[j] {
            j += 1
        } else {
            i += 1
        }
    }
    return -1
   }

print(getCommon([1,1,2], [2,4]))
