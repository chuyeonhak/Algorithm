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
