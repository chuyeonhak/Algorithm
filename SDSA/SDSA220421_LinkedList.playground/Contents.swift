import UIKit

public struct StackList<T> {
    fileprivate var head: Node<T>? = nil
    private var _count: Int = 0
    public init() {}
    
    public init<S: Sequence>(_ s: S) where S.Iterator.Element == T {
        for el in s {
            push(element: el)
        }
    }
    
    public mutating func push(element: T) {
        let node = Node<T>(data: element)
        node.next = head
        head = node
        _count += 1
    }
    
    public mutating func pop() -> T? {
        if isEmpty() { return nil }
        // head 노드의 아이템을 가져옴
        let item = head?.data
        // head 노드를 삭제함
        head = head?.next
        // 요소의 수를 1만큼 감소시킴
        _count -= 1
        return item
    }
    
    public func peek() -> T? {
        return head?.data
    }
    
    public func isEmpty() -> Bool {
        return count == 0
    }
    
    public var count: Int {
        return _count
    }
}

private class Node<T> {
    fileprivate var next: Node<T>?
    fileprivate var data: T
    init(data: T) {
        next = nil
        self.data = data
    }
}

extension StackList: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        var d = "["
        var lastNode = head
        while lastNode != nil {
            d = d + "\(lastNode!.data)"
            lastNode = lastNode?.next
            if lastNode != nil {
                d = d + ", "
            }
        }
        d = d + "]"
        return d
    }
    
    public var debugDescription: String {
        var d = "["
        var lastNode = head
        while lastNode != nil {
            d = d + "\(lastNode!.data)"
            lastNode = lastNode?.next
            if lastNode != nil {
                d = d + ", "
            }
        }
        d = d + "]"
        return d
    }
}

public struct NodeIterator<T>: IteratorProtocol {
    public typealias Element = T
    private var head: Node<Element>?
    fileprivate init(head: Node<T>?) {
        self.head = head
    }
    
    mutating public func next() -> T? {
        if head != nil {
            let item = head!.data
            head = head!.next
            return item
        }
        return nil
    }
}

extension StackList: Sequence {
    public typealias Iterator = NodeIterator<T>
    /// 이번 시퀀스 요소의 반복기 반환
    public func makeIterator() -> NodeIterator<T> {
        return NodeIterator<T>(head: head)
    }
}

struct Stack<T> {
    
    private var elements = [T]()
    
    init() {}
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }
    
    func peek() -> T? {
        return elements.last
    }
    
    func isEmpty() -> Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
}

extension Stack: CustomStringConvertible, CustomDebugStringConvertible {
    var description: String {
        return self.elements.description
    }
    
    var debugDescription: String {
        return self.elements.debugDescription
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: T...) {
        for element in elements {
            push(element)
        }
    }
}

extension Stack: Sequence {
    func makeIterator() -> ArrayIterator<T> {
        return ArrayIterator<T>(elements: self.elements)
    }
    
    init<S: Sequence>(_ s: S) where S.Iterator.Element == T {
        self.elements = Array(s)
    }
}

struct ArrayIterator<T>: IteratorProtocol {
    var currentElements: [T]
    
    init(elements: [T]) {
        self.currentElements = elements
    }
    
    mutating func next() -> T? {
        if !currentElements.isEmpty {
            return self.currentElements.popLast()
        }
        return nil
    }
}


var myStack = Stack<Int>()

myStack.push(34)
myStack.push(77)
myStack.push(67)

var x = myStack.pop()
x = myStack.pop()
x = myStack.pop()
x = myStack.pop()


var myStackList = [4, 5, 6, 7]

var myStackListFromStackList = StackList<Int>(myStackList)

print(myStackListFromStackList)

myStackListFromStackList.push(element: 55)

myStackListFromStackList.push(element: 70)


myStackListFromStackList.push(element: 80)

myStackListFromStackList.peek()
