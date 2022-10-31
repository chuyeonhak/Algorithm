import UIKit

struct Queue<T> {
    var data: [T] = []
    // 빈 큐로 정의
    public init() { }

    public init<S: Sequence>(_ elements: S) where S.Iterator.Element == T {
        data.append(contentsOf: elements)
    }
    /// 큐에서 첫 번째 요소를 제거하고 반환
    /// - 반환값: T
    /// 큐가 빈 상태가 아닌 경우, 첫 번째 요소의 타입은 `T`
    /// - 큐가 빈 상태인 경우, 'nil'을 반환
    mutating func dequeue() -> T? {
        return data.removeFirst()
    }

    /// 큐에서 첫 번째 요소를 제거하지 않고 반환
    /// - 반환값: T
    /// - 큐가 빈 상태가 아닌 경우, 첫 번째 요소의 타입은 `T`
    /// - 큐가 빈 상태인 경우, 'nil'을 반환
    func peek() -> T? {
        return data.first
    }

    /// 큐의 맨 뒤에 요소를 추가
    /// - 복잡성: O(1)
    /// - 파라미터 요소: `T` 타입의 요소
    mutating func enqueue(element: T) {
        data.append(element)
    }

    /// MARK:- 순환 버퍼를 위한 도우미 메서드 구현
    /// 버퍼를 재설정해 빈 상태가 되게 함
    mutating func clear() {
        data.removeAll()
    }

    /// 큐에 있는 요소의 수를 반환
    /// `count`는 큐에 있는 요소의 수
    var count: Int { return data.count }

    /// 큐의 용량을 반환
    var capacity: Int {
        get {
            return data.capacity
        }
        set {
            data.reserveCapacity(newValue)
        }
    }

    /// 큐가 꽉 찼는지 확인
    /// - 반환값: 큐가 꽉 찬 경우 `True`를 반환하고, 그렇지 않은 경우 `False`를 반환
    func isFull() -> Bool {
        return count == data.capacity
    }

    /// Check if the queue is empty. 큐가 비었는지를 확인
    /// - 반환값: 큐가 비어있는 경우 `True`를 반환하고, 그렇지 않은 경우 `False`를 반환
    func isEmpty() -> Bool { return data.isEmpty }

    /// index가 지정 범위 내 값인지 확인
    func checkIndex(index: Int) {
        if index < 0 || index > count {
            fatalError("Index out of range")
        }
    }

    public subscript(index: Int) -> T {
        get {
            checkIndex(index: index)
            return data[index]
        }
        
        set {
            checkIndex(index: index)
            data[index] = newValue
        }
    }
}

struct QueueIterator<T>: IteratorProtocol {
    var currentElements: [T]

    mutating func next() -> T? {
        if !currentElements.isEmpty {
            return currentElements.removeFirst()
        } else { return nil }
    }
}

extension Queue: Sequence {
    /// 이번 시퀀스를 순회하는 반복기를 반환
    /// - Complexity: O(1).

    func generate() -> AnyIterator<T> {
        AnyIterator(IndexingIterator(_elements: data.lazy))
    }
}

extension Queue: Collection {
    var startIndex: Int {
        return 0
    }

    var endIndex: Int {
        return count
    }

    public func index(after i: Int) -> Int {
        return data.index(after: i)
    }
}

extension Queue: CustomStringConvertible, CustomDebugStringConvertible {
    var description: String { return data.description }
    var debugDescription: String { return data.debugDescription }
}

extension Queue: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

var queue = Queue<Int>()

queue.enqueue(element: 100)
queue.enqueue(element: 120)
queue.enqueue(element: 125)
queue.enqueue(element: 130)

let x = queue.dequeue()

// 해당 요소를 제거하지 않고 다음 요소를 확인
let y = queue.peek()

let z = queue.dequeue()

var q1: Queue<Int> = [1, 2, 3, 4, 5]

//var q2 = Queue<Int>(q1)
var q3 = Queue<Int>(q1)
q3.enqueue(element: 50)
let q1x = q1.dequeue()


for q in q3 {
    print(q)
}

let sortedQ3 = q3.sorted { a, b in
    a > b
}

queue.startIndex

let hello = 3

switch hello {
case 0...: print("\(hello)"); fallthrough
case 5: print("wow")
default: break
}
