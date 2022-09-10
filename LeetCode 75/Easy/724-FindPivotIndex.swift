// Link: https://leetcode.com/problems/find-pivot-index/

// First Solution: Unaccepted. Failed
class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        
        var startPointer = 0
        var endPointer = nums.count-1
        
        var startValue = 0
        var endValue = 0

        while startPointer <= endPointer {
            
            startValue += nums[startPointer] 
            
            if startValue == endValue {
                return startPointer + 1
            }
            
            endValue += nums[endPointer]
            
            startPointer += 1
            endPointer -= 1
        }
        
        return -1
    }
}

/*
It fails because it'll be hard to use two pointer solution. 
the first thing we should do is to carefully "count" the right side of array.
two pointers make the "cumulative" sum is done simultanously
*/

// Second Solution: Accepted. Succeed
class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        
        // Sum all the values from the right side of array
        var rightValue = 0
        
        for i in 0 ... nums.count - 1 {
            rightValue += nums[i]
        }
        
        // Decrease the right value by current array from the left
        // Check if rightValue == leftValue, return the index
        // increase leftValue with value of array index

        var leftValue = 0
        
        for i in 0 ... nums.count - 1 {
            rightValue -= nums[i]
            
            if rightValue == leftValue {
                return i
            }
            
            leftValue += nums[i]
        } 
        
        // If those conditions don't met then return -1
        return -1
    }
}