import UIKit

public struct LinkedList<T> where T: Comparable {
    private var _head: Node<T>? = nil
    
    private var _count: Int = 0
    
    public init() {}
    
    public init<S : Sequence>(_ s: S) where S.Iterator.Element == T {
        for el in s {
            push(el)
        }
    }
    
    public mutating func push(_ element: T) {
        let node = Node<T>(data: element)
        node.next = head
        head = node
        _count += 1
    }
    
    public mutating func pop() -> T? {
        if isEmpty() { return nil }
        
        let item = head?.data
        
        head = head?.next
        
        _count -= 1
        return item
    }
    
    public func peek() -> T? { return head?.data }
    
    public func isEmpty() -> Bool { return count == 0 }
    
    public var count: Int { return _count }
    
    public var head: Node<T>? {
        get {
            return _head
        }
        set {
            _head = newValue
        }
    }
}

// MARK: - CustomStringConvertible, CustomDebugStringConvertible
extension LinkedList: CustomStringConvertible, CustomDebugStringConvertible {
    
    public var description: String {
        var d = "["
        var lastNode = head
        while lastNode != nil {
            d = d + "\(String(describing: lastNode?.data))"
            lastNode = lastNode?.next
            if lastNode != nil {
                d = d + ","
            }
        }
        d = d + "]"
        return d
    }
    
    public var debugDescription: String {
        var d = "["
        var lastNode = head
        while lastNode != nil {
            d = d + "\(String(describing: lastNode?.data))"
            lastNode = lastNode?.next
            if lastNode != nil {
                d = d + ","
            }
        }
        d = d + "]"
        return d
    }
}

public struct NodeIterator<T> : IteratorProtocol where T: Comparable {
    public typealias Element = T
    
    private var head: Node<Element>?
    
    init(head: Node<T>?){
        self.head = head
    }
    
    mutating public func next() -> T? {
        if (head != nil) {
            let item = head!.data
            head = head!.next
            return item
        }
        return nil
    }
}


extension LinkedList: Sequence {
    public typealias Iterator = NodeIterator<T>
    
    public func makeIterator() -> NodeIterator<T> {
        return NodeIterator<T>(head: head)
    }
}

public class Node<T> where T: Comparable {
    public var next: Node<T>?
    public var data: T
    
    convenience init() {
        self.init()
    }
    
    init(data: T) {
        next = nil
        self.data = data
    }
}


// 랜덤 어레이 만들기~
public func makeArray(n: Int ) -> [Int] {
    var result:[Int] = []
    for _ in 0..<n {
        result.append(Int(arc4random_uniform(10000) + 1))
    }
    return result
}
/// 삽~입 정렬
/// - Parameter list: [T: Comparable]
/// `Comparable`개별 요소를 비교해야 함
public func insertionSort<T: Comparable>(_ list: inout [T]) {
    if list.count <= 1 { return }
    
    /// `count`회 반복 순회
    for i in 1..<list.count {
        let x = list[i]
        var j = i
        while j > 0 && list[j - 1] > x {
            list[j] = list[j - 1]
            j -= 1
        }
        list[j] = x
    }
}

var randomArray = makeArray(n: 20)
insertionSort(&randomArray)

var examArray: [Int] = [27, 11, 5, 30, 9, 28, 18, 34]




// 병합분리정렬
private func merge<T: Comparable>(_ leftHalf: [T], rightHalf: [T]) -> [T] {
    var leftIndex = 0,
        rightIndex = 0,
        tmpList = [T]()
    tmpList.reserveCapacity(leftHalf.count + rightHalf.count)

    while (leftIndex < leftHalf.count && rightIndex < rightHalf.count) {
        if leftHalf[leftIndex] < rightHalf[rightIndex] {
            tmpList.append(leftHalf[leftIndex])
            leftIndex += 1
        } else if leftHalf[leftIndex] > rightHalf[rightIndex] {
            tmpList.append(rightHalf[rightIndex])
            rightIndex += 1
        } else {
            tmpList.append(leftHalf[leftIndex])
            tmpList.append(rightHalf[rightIndex])
            leftIndex += 1
            rightIndex += 1
        }
    }

    tmpList += [T](leftHalf[leftIndex..<leftHalf.count])
    tmpList += [T](rightHalf[rightIndex..<rightHalf.count])

    return tmpList
}

public func mergeSort<T: Comparable>(_ list: [T]) -> [T] {
    if list.count < 2 { return list }
    let center = (list.count) / 2
    return merge(mergeSort([T](list[0..<center])),
                 rightHalf: mergeSort([T](list[center..<list.count])))
}

var randomArray2 = makeArray(n: 20)
print(mergeSort(randomArray2))
randomArray2 = mergeSort(randomArray2)

// 연결 목록 기반 병합 정렬 알고리즘
func mergeSort<T: Comparable>(list: inout LinkedList<T>) {
    var left: Node<T>? = nil
    var right: Node<T>? = nil
    
    if list.head == nil || list.head?.next == nil { return }
    
    frontBackSplit(list: &list, front: &left, back: &right)
    
    var leftList = LinkedList<T>()
    leftList.head = left
    
    var rightList = LinkedList<T>()
    rightList.head = right
    
    mergeSort(list: &leftList)
    mergeSort(list: &rightList)
    
    list.head = merge(left: leftList.head, right: rightList.head)
}

private func merge<T: Comparable>(left: Node<T>?, right: Node<T>?) -> Node<T>? {
    var result: Node<T>? = nil
    
    if left == nil { return right }
    else if right == nil { return left }
    
    if left!.data <= right!.data {
        result = left
        result?.next = merge(left: left?.next, right: right)
    } else {
        result = right
        result?.next = merge(left: left, right: right?.next)
    }
    
    return result
}

private func frontBackSplit<T: Comparable>(list: inout LinkedList<T>, front: inout Node<T>?, back: inout Node<T>?) {
    var fast: Node<T>?
    var slow: Node<T>?
    
    if list.head == nil || list.head?.next == nil {
        front = list.head
        back = nil
    } else {
        slow = list.head
        fast = list.head?.next
        while fast != nil {
            fast = fast?.next
            if fast != nil {
                slow = slow?.next
                fast = fast?.next
            }
        }
        
        front = list.head
        back = slow?.next
        slow?.next = nil
    }
}
