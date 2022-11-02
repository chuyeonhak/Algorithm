import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

public class Node {
     public var val: Int
     public var children: [Node]
     public init(_ val: Int) {
         self.val = val
         self.children = []
     }
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
//392. Is Subsequence
//    func isSubsequence(_ s: String, _ t: String) -> Bool {
//        let arrS = s.map{ $0 }
//        var idx = 0
//
//        for i in t {
//            if idx == arrS.count { return true }
//
//            if i == arrS[idx] {
//                idx += 1
//            } else {
//                continue
//            }
//        }
//
//        return idx == s.count
//    }
//977. Squares of a Sorted Array
//    func sortedSquares(_ nums: [Int]) -> [Int] {
//        return nums.map { $0 * $0 }.sorted(by: <)
//    }
//189. Rotate Array
//    func rotate(_ nums: inout [Int], _ k: Int) {
//        if k == 0 || nums.count == 1 {
//            return
//        } else if nums.count < k {
//            for _ in 1...k {
//                nums.insert(nums.popLast()!, at: 0)
//            }
//
//        } else {
//            let slice = nums.dropFirst(nums.count - k)
//            nums.removeLast(k)
//            nums.insert(contentsOf: slice, at: 0)
//        }
//    }
//3. Longest Substring Without Repeating Characters
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//        if s.count == 0 {
//            return 0
//        } else if s.count == 1 {
//            return 1
//        }
//
//        let arrS = Array(s)
//        var temp = [Character]()
//        var maxCount = 0
//        temp.append(arrS[0])
//
//        for i in 1...arrS.count-1{
//            if let index = temp.firstIndex(of: arrS[i]){
//                temp.removeFirst(index+1)
//            }
//            temp.append(arrS[i])
//            maxCount = max(maxCount, temp.count)
//        }
//
//        return maxCount
//    }

//49. Group Anagrams
//    func groupAnagrams(_ strs: [String]) -> [[String]] {
//        var tempDic = [[Character]: [String]]()
//
//        for i in strs {
//            let chars = i.map { $0 }.sorted()
//            var strArr = tempDic[chars] ?? []
//            strArr.append(i)
//            tempDic[chars] = strArr
//        }
//
//        return tempDic.values.sorted(by: { $0.count < $1.count })
//    }
    
//21. Merge Two Sorted Lists
//    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
//        guard let l1 = list1 else { return list2 }
//        guard let l2 = list2 else { return list1 }
//
//        if l1.val <= l2.val {
//            l1.next = mergeTwoLists(l1.next, l2)
//            return l1
//        }
//
//        l2.next = mergeTwoLists(l1, l2.next)
//        return l2
//    }
    
//206. Reverse Linked List
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        return reverseListInternal(head, nil)
//    }
//
//    func reverseListInternal(_ current: ListNode?, _ previous: ListNode?) -> ListNode? {
//        guard let current = current else { return previous }
//
//        let next = current.next
//        current.next = previous
//
//        return reverseListInternal(next, current)
//    }

//283. Move Zeroes
//    func moveZeroes(_ nums: inout [Int]) {
//        var idxArr = [Int]()
//        for i in 0..<nums.count {
//            if nums[i] == 0 {
//                idxArr.append(i)
//            }
//        }
//
//        nums.removeAll { $0 == 0 }
//        nums.append(contentsOf: idxArr.map { _ in 0 })
//    }
//    func moveZeroes(_ nums: inout [Int]) {
//        var writeIdx = 0
//        // Move non-zero items
//        for num in nums where num != 0 {
//            nums[writeIdx] = num
//            writeIdx += 1
//        }
//        // Fill the remaining with zero
//        for i in writeIdx..<nums.count {
//            nums[i] = 0
//        }
//    }
    
//167. Two Sum II - Input Array Is Sorted
//    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
//
//        for i in 0..<numbers.count {
//            for j in i + 1..<numbers.count {
//                if numbers[i] + numbers[j] == target {
//                    return [i + 1, j + 1]
//                }
//            }
//        }
//
//        return []
//    }
//    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
//        guard !numbers.isEmpty else { return [] }
//        var i = 0
//        var j = numbers.count - 1
//
//        while i < j {
//            guard numbers[i] + numbers[j] != target else { break }
//
//            if numbers[i] + numbers[j] > target {
//                j -= 1
//            } else {
//                i += 1
//            }
//        }
//
//        return [i + 1, j + 1]
//    }
    
//653. Two Sum IV - Input is a BST
//    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
//        var values = Set<Int>()
//
//        func rec(_ node: TreeNode?) -> Bool {
//            guard let node = node else { return false }
//
//            if values.contains(k - node.val) { return true }
//
//            values.insert(node.val)
//            return rec(node.left) || rec(node.right)
//        }
//
//        return rec(root)
//    }
//1920. Build Array from Permutation
//    func buildArray(_ nums: [Int]) -> [Int] {
//        return nums.map { nums[$0] }
//    }
    
//1929. Concatenation of Array
//    func getConcatenation(_ nums: [Int]) -> [Int] {
//        return nums + nums
//    }
    
//2011. Final Value of Variable After Performing Operations
//    func finalValueAfterOperations(_ operations: [String]) -> Int {
//        var result = 0
//
//        operations.map {
//            $0.contains("+") ? (result += 1): (result -= 1)
//        }
//
//        return result
//    }
    
//2154. Keep Multiplying Found Values by Two
//    func findFinalValue(_ nums: [Int], _ original: Int) -> Int {
//        var copy = original
//
//        while nums.contains(copy) {
//            copy *= 2
//        }
//
//        return copy
//    }
    
//1346. Check If N and Its Double Exist
//    func checkIfExist(_ arr: [Int]) -> Bool {
//        var set = Set<Int>()
//
//        for i in arr {
//            if set.contains(i * 2) { return true }
//            if i % 2 == 0 && set.contains(i / 2) {
//                return true
//            }
//            set.insert(i)
//        }
//        return false
//    }
//766. Toeplitz Matrix
//    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
//        let col =  matrix[0].count - 1,
//            row = matrix.count - 1
//
//        for c in 0..<col {
//            for r in 0..<row {
//                if matrix[r][c] != matrix[r+1][c+1] {
//                    return false
//                }
//            }
//        }
//
//        return true
//    }
    
//344. Reverse String
//    func reverseString(_ s: inout [Character]) {
//        s = Array(s.reversed())
//    }
    
//    func reverseString(_ s: inout [Character]) {
//        var first = 0
//        var last = s.count - 1
//
//        while first < last {
//            (s[first], s[last]) = (s[last], s[first])
//            first += 1
//            last -= 1
//        }
//    }

//876. Middle of the Linked List
//    func middleNode(_ head: ListNode?) -> ListNode? {
//        var slow: ListNode? = head
//        var fast: ListNode? = head
//
//        while fast?.next != nil{
//
//            slow = slow?.next
//            fast = fast?.next?.next
//        }
//
//        return slow
//    }
    
//557. Reverse Words in a String III
//    func reverseWords(_ s: String) -> String {
//        return s.components(separatedBy: " ").map { String($0.reversed()) }.joined(separator: " ")
//    }
//    func reverseWords(_ s: String) -> String {
//        var string = Array(s.utf8)
//        var i = 0
//
//        for j in string.indices {
//            if string[j] == UInt8(ascii: " ") {
//                string[i ..< j].reverse()
//                i = j + 1
//            }
//        }
//        string[i...].reverse()
//
//        return String(decoding: string, as: Unicode.UTF8.self)
//    }
    
//121. Best Time to Buy and Sell Stock
//    func maxProfit(_ prices: [Int]) -> Int {
//        var max = 0
//
//        for i in 0..<prices.count {
//            for j in i+1..<prices.count {
//                if prices[j] - prices[i] > 0 && prices[j] - prices[i] > max {
//                    max = prices[j] - prices[i]
//                }
//            }
//        }
//
//        return max
//    }
//    func maxProfit(_ prices: [Int]) -> Int {
//        var minPrice = Int.max
//        var result = 0
//
//        for price in prices {
//            minPrice = min(minPrice, price)
//            result = max(result, price - minPrice)
//        }
//
//        return result
//    }
    
//589. N-ary Tree Preorder Traversal
//    func preorder(_ root: Node?) -> [Int] {
//        var res = [Int]()
//        if root == nil { return res }
//        var stack = [Node]()
//        stack.append(root!)
//
//        while stack.count > 0 {
//            var current = stack.removeLast()
//            res.append(current.val)
//            var children = current.children
//            stack += children.reversed()
//        }
//
//        return res
//    }
    
//102. Binary Tree Level Order Traversal
//    func levelOrder(_ root: TreeNode?) -> [[Int]] {
//            guard root != nil else { return [] }
//            var result: [[Int]] = []
//
//            var queue: [TreeNode?] = []
//            queue.append(root)
//
//            while(!queue.isEmpty) {
//                var count = queue.count - 1
//                var temp: [Int] = []
//                 while(count >= 0) {
//                   if let node = queue.removeFirst() {
//                       temp.append(node.val)
//                       count -= 1
//                       if let left = node.left { queue.append(left) }
//                       if let right = node.right { queue.append(right) }
//                   }
//                }
//
//                result.append(temp)
//            }
//
//            return result
//        }
    
//567. Permutation in String
//    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
//        typealias DCI = [Character:Int]
//        let as2 = Array(s2)
//        var lhs = 0, rhs = 0, match = 0, need = DCI(), win = DCI()
//        for ch in s1 { need[ch, default: 0] += 1 }
//        while rhs < as2.count {
//            let a2r = as2[rhs]
//            rhs += 1
//            if let n2r = need[a2r] {
//                win[a2r, default: 0] += 1
//                if win[a2r] == n2r { match += 1 }
//            }
//            while match == need.count {
//                if rhs - lhs == s1.count { return true }
//                let a2l = as2[lhs]
//                lhs += 1
//                if let n2l = need[a2l] {
//                    if win[a2l] == n2l { match -= 1 }
//                    win[a2l, default: 0] -= 1
//                }
//            }
//        }
//        return false
//    }
    
//733. Flood Fill
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
            var img = image
            dfs(&img, sr, sc, img[sr][sc], newColor)
            return img
        }
        private func dfs(_ image: inout [[Int]], _ sr: Int, _ sc: Int, _ pix: Int, _ newColor: Int) {
            if (sr < 0 || sr >= image.count) { return }
            if (sc < 0 || sc >= image[0].count) { return }
            let pixOld = image[sr][sc]
            if pixOld == newColor || pixOld != pix { return }
            image[sr][sc] = newColor
            for p in [(0,1),(0,-1),(1,0),(-1,0)] {
                dfs(&image, (sr + p.0), (sc + p.1), pix, newColor)
            }
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

//392. Is Subsequence
//solution.isSubsequence("abc", "ahbgdc")
//solution.isSubsequence("axc", "ahbgdc")
//solution.isSubsequence("ab", "baab")
//solution.isSubsequence("aaaaaa", "bbaaaa")

//977. Squares of a Sorted Array
//solution.sortedSquares([-4,-1,0,3,10])
//solution.sortedSquares([-7,-3,2,3,11])
//solution.sortedSquares([-10000,-9999,-7,-5,0,0,10000])

//189. Rotate Array
//var hello = [-1,-100,3,99]
//var hello2 = [1,2,3,4,5,6,7]
//solution.rotate(&hello, 2)
//solution.rotate(&hello2, 3)

//3. Longest Substring Without Repeating Characters
//solution.lengthOfLongestSubstring("abcabcbb")
//solution.lengthOfLongestSubstring("bbbbb")
//solution.lengthOfLongestSubstring("pwwkew")
//solution.lengthOfLongestSubstring("au")
//solution.lengthOfLongestSubstring("aab")

//49. Group Anagrams
//solution.groupAnagrams(["eat","tea","tan","ate","nat","bat"])
//solution.groupAnagrams([""])
//solution.groupAnagrams(["a"])
//solution.groupAnagrams(["ddddddddddg","dgggggggggg"])

//21. Merge Two Sorted Lists
let listNode1 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
//let listNode2 = ListNode(1, ListNode(3, ListNode(4)))
//solution.mergeTwoLists(listNode1, listNode2)
//solution.mergeTwoLists(listNode3, listNode4)

//solution.reverseList(listNode1)
//283. Move Zeroes
//var nums1 = [0,1,0,3,12]
//var nums2 = [0]
//var nums3 = [0, 0, 1]
//solution.moveZeroes(&nums1)
//solution.moveZeroes(&nums2)
//solution.moveZeroes(&nums3)

//167. Two Sum II - Input Array Is Sorted
//solution.twoSum([2,7,11,15], 9)
//solution.twoSum([2,3,4], 6)
//solution.twoSum([-1,0], -1)

//653. Two Sum IV - Input is a BST

//1920. Build Array from Permutation
//solution.buildArray([0,2,1,5,3,4])
//solution.buildArray([5,0,1,2,3,4])

//1929. Concatenation of Array
//solution.getConcatenation([1,2,1])
//solution.getConcatenation([1,3,2,1])

//2011. Final Value of Variable After Performing Operations
//solution.finalValueAfterOperations(["--X","X++","X++"])

//2154. Keep Multiplying Found Values by Two
//solution.findFinalValue([5,3,6,1,12], 3)
//solution.findFinalValue([2,7,9], 4)

//1346. Check If N and Its Double Exist
//solution.checkIfExist([10,2,5,3])
//solution.checkIfExist([3,1,7,11])

//766. Toeplitz Matrix
//solution.isToeplitzMatrix([[1,2,3,4],[5,1,2,3],[9,5,1,2]])
//solution.isToeplitzMatrix([[1,2],[2,2]])
//solution.isToeplitzMatrix([[18],[66]])
//solution.isToeplitzMatrix([[11,74,0,93],[40,11,74,7]])

//344. Reverse String
//var testArr: [Character] = ["h","e","l","l","o"]
//solution.reverseString(&testArr)

//876. Middle of the Linked List
//let listNode2 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))),
//    listNode3 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, ListNode(6))))))
//solution.middleNode(listNode2)
//solution.middleNode(listNode3)

//557. Reverse Words in a String III
//solution.reverseWords("Let's take LeetCode contest")
//solution.reverseWords("God Ding")

//121. Best Time to Buy and Sell Stock
//solution.maxProfit([7,1,5,3,6,4])
//solution.maxProfit([7,6,4,3,1])

//589. N-ary Tree Preorder Traversal
//var node1 = Node(1),
//    node2 = Node(2),
//    node3 = Node(3),
//    node4 = Node(4),
//    node5 = Node(5),
//    node6 = Node(6)
//
//node1.children = [node3, node2, node4]
//node3.children = [node5, node6]
//
//solution.preorder(node1)

//102. Binary Tree Level Order Traversal
//solution.levelOrder(nil)

//567. Permutation in String
//solution.checkInclusion("ab", "eidbaooo")
//solution.checkInclusion("ab", "eidboaoo")

//733. Flood Fill
solution.floodFill([[1,1,1],[1,1,0],[1,0,1]], 1, 1, 2)
solution.floodFill([[0,0,0],[0,0,0]], 0, 0, 0)
