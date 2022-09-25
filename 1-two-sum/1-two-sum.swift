class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int:Int] = [:]
        for i in 0 ..< nums.count {
            var key = target - nums[i]
            if dict[key] != nil {
                return [dict[key]!,i]
            } else {
                dict[nums[i]] = i
            }
            
        }
        return [0, 1]
    }
}