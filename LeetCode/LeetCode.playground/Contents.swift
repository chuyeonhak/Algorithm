import UIKit

var greeting = "Hello, playground"

//func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
//    var dic: [Int: [Int]] = [:]
//
//    let _ = nums.enumerated().forEach {
//        var value = dic[$0.element] ?? []
//        value.append($0.offset)
//        dic[$0.element] = value
//    }
//
//    let sortedDic = dic.filter { $0.value.count >= 2 }
//
//    for dic in sortedDic {
//        for i in dic.value.enumerated() {
//            guard  dic.value.indices ~= i.offset + 1 else { continue }
//            if abs(dic.value[i.offset] - dic.value[i.offset + 1]) <= k {
//                return true
//            } else { continue }
//        }
//    }
//
//    return false
//}

//func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
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
//containsNearbyDuplicate([1,2,3,1], 3)
//containsNearbyDuplicate([1,0,1,1], 1)
//containsNearbyDuplicate([1,2,3,1,2,3], 2)
