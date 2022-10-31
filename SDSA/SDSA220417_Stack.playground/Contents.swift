import UIKit

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

myStack.push(5)
myStack.push(44)
myStack.push(23)

var x = myStack.pop()
x = myStack.pop()

print(myStack)

var myStack2 = [4, 5, 6, 7]

var myStackFromStack = Stack<Int>(myStack2)
myStackFromStack.push(55)
myStackFromStack.push(70)
myStackFromStack.pop()
print(myStackFromStack)

