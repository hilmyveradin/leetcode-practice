// Link: https://leetcode.com/problems/running-sum-of-1d-array/

// First Solution: Accepted
class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        
        if nums.count == 1 {
            return nums
        }
        
        var result = [Int]()
        var tempNumber: Int!
        
        result.append(nums[0])
        
        for i in 1 ..< (nums.count)  {
            result.append(result.last! + nums[i])
        }
        
        return result
        
    }
}

/*
The plan is to create a new result array
We need result[0] be counted as the first index
count last array, append it with nums[i] values
*/

// Second Solution: Accepted
class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        
        var resultValue = 0
        var arrayResult = [Int]()
        
        for i in 0 ... nums.count-1 {
            resultValue += nums[i]
            arrayResult.append(resultValue)
        }
        
        return arrayResult
    }
}

/*
It follows simmilar result to the first solution, with a better readability
It's more slower compared to the first solution
*/

