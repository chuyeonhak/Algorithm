import UIKit

public func makeArray(n: Int ) -> [Int] {
    var result: [Int] = []
    while result.count < n {
        let randomValue = Int(arc4random_uniform(50) + 1)
        if !result.contains(randomValue) {
            result.append(randomValue)
        }
    }
    return result
}

func mesureTime(_ closure: () -> ()) ->TimeInterval {
    let startTime = CFAbsoluteTimeGetCurrent()
    closure()
    return CFAbsoluteTimeGetCurrent() - startTime
}

func quickSort<T: Comparable>(_ list: inout [T], low: Int, high: Int) {
    if low < high {
        let pivot = partition(&list, low: low, high: high)
        print("""
              -------------------------------------------------------------------------
              low: \(low), high: \(high), pivot: \(pivot)
              \(list)
              """)
        print("---------------------------- \(pivot) - 1 ------------------------------------")
        quickSort(&list, low: low, high: pivot - 1)
        print("---------------------------- \(pivot) + 1 ------------------------------------")
        quickSort(&list, low: pivot + 1, high: high)
    }
}

// 목록의 맨 마지막 값을 선택하는 나이브 기법
func partition<T: Comparable>(_ list: inout [T], low: Int, high: Int) -> Int {
    let pivot = list[high]
    
    var i = low
    
    for j in low..<high {
        print("j: \(list[j]), pivot: \(pivot)")
        if list[j] <= pivot {
            list.swapAt(i, j)
            print("list[j] <= pivot list: \(list)")
            i += 1
            print("i: \(i)")
        }
    }
    
    list.swapAt(i, high)
    print("list: \(list)")
    return i
}

func quickSort<T: Comparable>(_ list: inout [T], lo: Int, hi: Int) {
    if lo < hi {
        
        let median = getMedianOfThree(&list, lo: lo, hi: hi)
        let pivot = partition(&list, lo: lo, hi: hi)
        print("""
              -------------------------------------------------------------------------
              low: \(lo), high: \(hi), pivot: \(pivot)
              \(list)
              """)
        print("--------------------------------- \(pivot) -------------------------------------")
        quickSort(&list, lo: lo, hi: pivot)
        print("--------------------------------- \(pivot) + 1 ---------------------------------")
        quickSort(&list, lo: pivot + 1, hi: hi)
        
    }
}

func partition<T: Comparable>(_ list: inout [T], lo: Int, hi: Int) -> Int {
    let pivot = list[lo]
    
    var i = lo - 1
    var j = hi + 1
    
    while true {
        print("pivot: \(pivot), i: \(i), j: \(j)")
        i += 1
        while list[i] < pivot {
            print("\(list[i]) < \(pivot)")
            i += 1
        }
        j -= 1
        while list[j] > pivot {
            print("\(list[j]) > \(pivot)")
            j -= 1
        }
        if i >= j {
            print("if i >= j, i: \(i), j: \(j)")
            return j
        }
        list.swapAt(i, j)
        print("after  list: \(list), i: \(i), j: \(j)")
    }
}

private func getMedianOfThree<T: Comparable>(_ list: inout [T], lo: Int, hi: Int) -> T {
    let center = lo + (hi - lo) / 2
    
    if list[lo] > list[center] {
        list.swapAt(lo, center)
    }
    
    if list[lo] > list[hi] {
        list.swapAt(lo, hi)
    }
    
    if list[center] > list[hi] {
        list.swapAt(center, hi)
    }
    
    return list[hi]
}


var randomArray1 = makeArray(n: 10)
var randomArray2 = makeArray(n: 10)

mesureTime {
//    print("pureList \(randomArray1)")
//    quickSort(&randomArray1, low: 0, high: randomArray1.count - 1)
//    print()
}

mesureTime {
    print("pureList \(randomArray2)")
    print("-------------------------------------------------------------------------")
    quickSort(&randomArray2, lo: 0, hi: randomArray2.count - 1)
}


func removeDuplication(in array: [Int]) -> [Int]{
    let set = Set(array)
    let duplicationRemovedArray = Array(set)
    return duplicationRemovedArray
}

var testArray = [1 , 2, 3, 1, 5]

removeDuplication(in: testArray)

let hello: Int? = 11
func hello1() {
    guard let hello2 = hello, hello2 != 11 else {
        print("return")
        return }
//    if hello == 11 {
//        print(hello)
//    } else {
//        return
//    }
    print("wow")
}

hello1()
