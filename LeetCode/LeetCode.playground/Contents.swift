import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

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
//    func pivotIndex(_ nums: [Int]) -> Int {
//        var pivot = -1
//
//        for i in 0..<nums.count {
//            let leftSum = nums[0..<i].reduce(0, +),
//                rightSum = nums[i + 1..<nums.count].reduce(0, +)
//
//            if leftSum == rightSum {
//                pivot = i
//                break
//            }
//        }
//
//        return pivot
//    }
//704. Binary Search
//    func search(_ nums: [Int], _ target: Int) -> Int {
//        var answer = -1
//        if !nums.contains(target) {
//            return answer
//        } else {
//            nums.enumerated().map {
//                if $0.element == target {
//                    answer = $0.offset
//                }
//            }
//        }
//
//        return answer
//    }
    
//278. First Bad Version
//    func search(_ nums: [Int], _ target: Int) -> Int {
//        var left = 0, right = nums.count-1
//
//        while left <= right {
//            let pos = left + (right-left) / 2
//            print(pos)
//            if nums[pos] == target { return pos }
//
//            if target < nums[pos] {
//                right = pos - 1
//            } else {
//                left = pos + 1
//            }
//        }
//
//        return -1
//    }
    
//    func firstBadVersion(_ n: Int) -> Int {
//        var left = 1
//        var right = n
//        var middle = 0
//
//        while left < right {
//            middle = left + (right - left) / 2
//            if !isBadVersion(middle) {
//                left = middle + 1
//            } else {
//                right = middle
//            }
//        }
//
//        return left
//    }
    
//35. Search Insert Position
//    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
//        for i in 0..<nums.count {
//            if target == nums[i] || target < nums[i] {
//                return i
//            }
//        }
//
//        return nums.count
//    }
    
//2. Add Two Numbers
//    Definition for singly-linked list.
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        var copyl1 = l1
//        var copyl2 = l2
//
//        var result: ListNode? = ListNode()
//        let head = result
//
//        var carry = 0
//        while copyl1 != nil || copyl2 != nil || carry > 0 {
//            let first = copyl1?.val ?? 0,
//                second = copyl2?.val ?? 0,
//                sum = first + second + carry
//
//            let value = sum % 10
//            carry = sum / 10
//
//            result?.next = ListNode(value)
//            result = result?.next
//            copyl1 = copyl1?.next
//            copyl2 = copyl2?.next
//        }
//
//        return head?.next
//    }
    
//    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
//        return searchInsert(nums, target, 0, nums.count - 1)
//    }
//
//    func searchInsert(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {
//        if left > right {
//            return right + 1
//        }
//
//        let mid = (left + right) / 2
//        if nums[mid] == target {
//            return mid
//        } else if nums[mid] > target {
//            return searchInsert(nums, target, left, mid - 1)
//        }
//        return searchInsert(nums, target, mid + 1, right)
//    }
    
//205. Isomorphic Strings
//    func isIsomorphic(_ s: String, _ t: String) -> Bool {
//        var countS = 0
//        var countT = 0
//        var sDic = [Character: Int](),
//            tDic = [Character: Int]()
//
//        s.map {
//            if sDic[$0] == nil {
//                sDic[$0] = countS
//                countS += 1
//            }
//        }
//
//        t.map {
//            if tDic[$0] == nil {
//                tDic[$0] = countT
//                countT += 1
//            }
//        }
//
//        return s.map { sDic[$0]! } == t.map { tDic[$0]! }
//    }
//    func isIsomorphic(_ s: String, _ t: String) -> Bool {
//        var sdc = [Character:String.Index](), tdc = sdc
//        for i in s.indices {
//            guard sdc[s[i]] == tdc[t[i]] else { return false }
//            sdc[s[i]] = i
//            tdc[t[i]] = i
//        }
//        return true
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
//solution.pivotIndex([1,7,3,6,5,6])      // 3
//solution.pivotIndex([1, 2, 3])          // -1
//solution.pivotIndex([2, 1, -1])       // 0
//solution.pivotIndex([-1, 1, 2])         // 2

//704. Binary Search
//solution.search([-1,0,3,5,9,12], 9)     // 4
//solution.search([-1,0,3,5,9,12], 2)     // -1

//278. First Bad Version
//solution.firstBadVersion(5)
//solution.firstBadVersion(1)

//35. Search Insert Position
//solution.searchInsert([1,3,5,6], 5)     // 2
//solution.searchInsert([1,3,5,6], 2)     // 1
//solution.searchInsert([1,3,5,6], 7)     // 4
//solution.searchInsert([1,3,5,6], 0)     // 0


//2. Add Two Numbers
//solution.addTwoNumbers(ListNode(2, ListNode(4, ListNode(3))), ListNode(5, ListNode(6, ListNode(4))))


// abcdefg
//205. Isomorphic Strings
//solution.isIsomorphic("egg", "add")
//solution.isIsomorphic("foo", "bar")
//solution.isIsomorphic("paper", "title")
//solution.isIsomorphic("bbbaaaba", "aaabbbba")


