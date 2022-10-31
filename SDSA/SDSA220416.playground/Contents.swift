/*
 created by chuchu on 220416
 Swift Data structure and Algorithms
 */

import UIKit
import Foundation

var myIntArray: [Int] = [1, 3, 5, 7, 9]
var someSubset = myIntArray[2...4]

var my2DArray: [[Int]] = [[1,2], [10,11], [20, 30]]

var element = my2DArray[1][1]

class LinkedList<T> {
    var item: T?
    var next: LinkedList<T>?
}

var hello = [Int]()

hello.capacity
hello.reserveCapacity(500)
hello.capacity

var postalCode: NSString = NSString(format: "%d-%d", 32259, 1234)
var len = postalCode.length



