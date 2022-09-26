class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var writingIndex = m + n - 1
        var m = m - 1 
        var n = n - 1
        
        while m>=0 && n >= 0 {
            
            if nums1[m] > nums2[n] {
                nums1[writingIndex] = nums1[m]
                m -= 1
            } else {
                nums1[writingIndex] = nums2[n]
                n -= 1
            }
            writingIndex -= 1
        }
        
        if n > -1 {
            nums1[0...n] = nums2[0...n]
        }
    }
}