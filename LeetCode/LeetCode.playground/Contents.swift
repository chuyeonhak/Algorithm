import UIKit


class Solution {
//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    //219. Contains Duplicate II
//    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
//        var dic: [Int: [Int]] = [:]
//
//        let _ = nums.enumerated().forEach {
//            var value = dic[$0.element] ?? []
//            value.append($0.offset)
//            dic[$0.element] = value
//        }
//
//        let sortedDic = dic.filter { $0.value.count >= 2 }
//
//        for dic in sortedDic {
//            for i in dic.value.enumerated() {
//                guard  dic.value.indices ~= i.offset + 1 else { continue }
//                if abs(dic.value[i.offset] - dic.value[i.offset + 1]) <= k {
//                    return true
//                } else { continue }
//            }
//        }
//
//        return false
//    }
//
//    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
//        var dict = [Int: Int]()
//        for (currentIndex, num) in nums.enumerated() {
//            if let duplicateIndex = dict[num], currentIndex - duplicateIndex <= k {
//                return true
//            }
//            dict[num] = currentIndex
//        }
//        return false
//    }
//
//    containsNearbyDuplicate([1,2,3,1], 3)
//    containsNearbyDuplicate([1,0,1,1], 1)
//    containsNearbyDuplicate([1,2,3,1,2,3], 2)
//
//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
//1239. Maximum Length of a Concatenated String with Unique Characters
//    func maxLength(_ arr: [String]) -> Int {
//        guard arr.first?.count != 26 else { return 26 }
//        var copy = arr
//        var tempDic: [Character: Int] = [:]
//        var tempArr: Set<String> = []
//
//        for i in arr {
//            for j in i {
//                tempDic[j] = (tempDic[j] ?? 0) + 1
//            }
//        }
//
//        let sortedArr = tempDic.filter { $0.value > 1 }
//
//        for i in copy {
//            for j in i {
//                if sortedArr[j] != nil {
//                    tempArr.insert(i)
//                }
//            }
//        }
//
//        let sorted = tempArr.sorted { $0.count > $1.count }
//
//
//        return 0
//    }
//    func maxLength(_ arr: [String]) -> Int {
//        var dp = [Set<Character>()]
//        for s in arr {
//            if Set(s).count < s.count { continue }
//            let set = Set(s)
//            for c in dp {
//                if !set.isDisjoint(with: c) { continue }
//                dp.append(set.union(c))
//            }
//        }
//        return dp.map { $0.count }.max()!
//    }
//1662. Check If Two String Arrays are Equivalent
//    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
//        return word1.joined() == word2.joined()
//    }
    
//523. Continuous Subarray Sum
//    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
//            var remainders = [Int: Int]()
//            remainders[0] = -1
//            var sum = 0
//            for i in 0..<nums.count {
//                sum += nums[i]
//                let remainder = sum % k
//                if let index = remainders[remainder] {
//
//                    if i - index > 1 {
//                        return true
//                    }
//                } else {
//                    remainders[remainder] = i
//                }
//            }
//            return false
//        }
    
//1480. Running Sum of 1d Array
//    func runningSum(_ nums: [Int]) -> [Int] {
//        var temArr = Array(repeating: 0, count: nums.count)
//        temArr[0] = nums[0]
//
//        for i in 1..<nums.count {
//            temArr[i] = temArr[i - 1] + nums[i]
//        }
//
//        return temArr
//    }
    
//724. Find Pivot Index
    func pivotIndex(_ nums: [Int]) -> Int {
        var pivot = -1
        
        for i in 0..<nums.count {
            let leftSum = nums[0..<i].reduce(0, +),
                rightSum = nums[i + 1..<nums.count].reduce(0, +)
            
            if leftSum == rightSum {
                pivot = i
                break
            }
        }
        
        return pivot
    }
}


let solution = Solution()

//219. Contains Duplicate II
//solution.containsNearbyDuplicate([1,2,3,1], 3)
//solution.containsNearbyDuplicate([1,0,1,1], 1)
//solution.containsNearbyDuplicate([1,2,3,1,2,3], 2)

//1239. Maximum Length of a Concatenated String with Unique Characters
//solution.maxLength(["un","iq","ue"])
//solution.maxLength(["cha","r","act","ers"])
//solution.maxLength(["abcdefghijklmnopqrstuvwxyz"])

//1662. Check If Two String Arrays are Equivalent
//solution.arrayStringsAreEqual(["ab", "c"], ["a", "bc"])
//solution.arrayStringsAreEqual(["a", "cb"], ["ab", "c"])
//solution.arrayStringsAreEqual(["abc", "d", "defg"], ["abcddefg"])

//523. Continuous Subarray Sum
//solution.checkSubarraySum([23, 2, 4, 6, 7], 6)      // true
//solution.checkSubarraySum([23, 2, 6, 4, 7], 6)      // true
//solution.checkSubarraySum([23, 2, 6, 4, 7], 13)     // false
//solution.checkSubarraySum([23,2,4,6,6], 7)          // true
//solution.checkSubarraySum([5, 0, 0 ,0], 3)          // true
//solution.checkSubarraySum([0], 1)                   // false
//solution.checkSubarraySum([0,1,0,3,0,4,0,4,0], 5)   // true

//1480. Running Sum of 1d Array
//solution.runningSum([1, 2, 3, 4])

//724. Find Pivot Index
solution.pivotIndex([1,7,3,6,5,6])      // 3
solution.pivotIndex([1, 2, 3])          // -1
solution.pivotIndex([2, 1, -1])       // 0
solution.pivotIndex([-1, 1, 2])         // 2
