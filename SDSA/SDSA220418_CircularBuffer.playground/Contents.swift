import UIKit

enum CircularBufferOperation {
    case ignore, overwrite
}

struct Constants {
    fileprivate static let defaultBufferCapacity:Int = 16
}

struct CircularBuffer<T> {
    fileprivate var data: [T]
    fileprivate var head: Int = 0, tail: Int = 0
    
    private var internalCount: Int = 0
    private var overwriteOperation: CircularBufferOperation = .overwrite
    
    /// 빈 CircularBuffer 구조를 생성
    init() {
        data = [T]()
        data.reserveCapacity(Constants.defaultBufferCapacity)
    }
    
    /// `count` 프로퍼티의 CircularBuffer를 생성
    /// - warning: `count`만큼 2를 거듭제곱하지 않은 경우,
    /// 그에 가장 가까운 수만큼 2를 제곱함
    init(_ count:Int, overwriteOperation: CircularBufferOperation = .overwrite) {
        var capacity = count
        
        if capacity < 1 {
            capacity = Constants.defaultBufferCapacity
        }
        
        // `count`만큼 2를 거듭제곱으로 함
        if ((capacity & (~capacity + 1)) != capacity) {
            var b = 1
            while (b < capacity) {
                b = b << 1
            }
            
            capacity = b
        }
        
        data = [T]()
        data.reserveCapacity(capacity)
        self.overwriteOperation = overwriteOperation
    }
    
    /// 시퀀스에서 CircularBuffer를 생성
    init<S: Sequence>(_ elements: S, size: Int) where S.Iterator.Element == T {
        self.init(size)
        elements.forEach { push(element: $0) }
    }
    
    
    /// 버퍼에서 첫 번째 요소를 삭제한 뒤 반환
    /// - returns: `T?`
    /// - 버퍼가 비어있지 않은 경우, 첫 번째 요소의 타입은 `T`
    /// - 버퍼가 비어있는 경우, `nil`을 반환
    mutating func pop() -> T? {
        if (isEmpty()) {
            return nil
        }
        
        let el = data[head]
        head = incrementPointer(pointer: head)
        internalCount -= 1
        return el
    }
    
    /// 버퍼에서 첫 번째 요소를 삭제하지 않고 반환
    /// - returns: 첫 번째 요소의 타입은 `T`.
    func peek() -> T? {
        if (isEmpty()) {
            return nil
        }
        return data[head]
    }
    
    /// `element`를 버퍼 맨 뒤에 추가
    /// 기본 메서드인 `overwriteOperation`이
    /// `CircularBufferOperation.overwrite`가 되면,
    /// 버퍼가 가득 찬 경우, 가장 오래된 요소를 덮어쓰기한다.
    
    /// 만일 `overwriteOperation`이
    /// `CircularBufferOperation.overwrite`가 되면,
    /// 기존의 요소가 삭제될 때가지 버퍼에 새로운 요소가 추가되지 않는다.
    /// - complexity: O(1)
    /// - parameters: `T` 타입의 요소
    mutating func push(element: T) {
        if (isFull()) {
            switch(overwriteOperation) {
            // count가 용량보다 작은 경우 새 요소를 추가하지 말 것
            case .ignore: return
                
            case .overwrite: pop()
            }
        }
        
        if (data.endIndex < data.capacity) {
            data.append(element)
        } else {
            data[tail] = element
        }
        
        tail = incrementPointer(pointer: tail)
            internalCount += 1
    }
    
    /// 버퍼를 빈 상태로 재설정
    mutating func cleare() {
        head = 0
        tail = 0
        internalCount = 0
        data.removeAll(keepingCapacity: true)
    }
    
    /// 버퍼 내 요소의 수를 반환
    /// `count`는 버퍼 내 요소의 수임
    var count: Int { return internalCount }
    
    /// 버퍼의 용량을 반환
    var capacity: Int {
        get { return data.capacity }
        set { data.reserveCapacity(newValue) }
    }
    
    /// 버퍼가 가득 찼는지 확인
    /// - returns: 버퍼가 가득 찬 경우 `True`, 그렇지 않은 경우 `False`를 반환
    func isFull() -> Bool { return count == data.capacity }
    
    /// 버퍼가 비어있는지 확인
    /// - returns: 버퍼가 빈 경우 `True`, 그렇지 않은 경우 `False`를 반환
    func isEmpty() -> Bool { return (count < 1) }
    
    /// 포인터 값을 1씩 증가시킴
    /// - returns: Int
    /// - warning: 이 메서드는 증가된 값이 배열의 마지막 요소를 넘을 경우를 대비
    fileprivate func incrementPointer(pointer: Int) -> Int { return (pointer + 1) & (data.capacity - 1) }
    
    /// 포인터 값을 1씩 감소시킴
    /// - returns: Int
    /// - warning: 이 메서드는 감소된 값이 배열의 첫 번째 요소에 미치지 못할 경우를 대비
    fileprivate func decrementPointer(pointer: Int) -> Int { return (pointer - 1) & (data.capacity - 1) }
    
    /// 서브스크립트 작성을 위해 로지컬 인덱스 값을
    /// 현재 내부의 배열 요소의 인덱스 값으로 변환함
    fileprivate func convertLogicalToRealIndex(logicalIndex: Int) -> Int { return (head + logicalIndex) & (data.capacity - 1) }
    
    /// `index`가 지정 범위 내에 있는지 확인
    fileprivate func checkIndex(index: Int) {
        if index < 0 || index > count {
            fatalError("Index out of ragne")
        }
    }
}

extension CircularBuffer: CustomStringConvertible {
    var description: String { return data.description }
}

extension CircularBuffer: CustomDebugStringConvertible {
    var debugDescription: String { return data.debugDescription }
}

extension CircularBuffer: ExpressibleByArrayLiteral {
    // 배열 리터럴로 CircularBuffer를 구성
    init(arrayLiteral elements: T...) {
        self.init(elements, size: elements.count)
    }
}

extension CircularBuffer: Sequence {
    /// 이번 시퀀스의 요소를 순회한 뒤 반복기를 반환
    /// - complexity: O(1).
    func makeIterator() -> some IteratorProtocol {
        var newData = [T]()
        if count > 0 {
            newData = [T](repeating: data[head], count: count)
            if head > tail {
                // 처음 절반에 해당하는 요소의 수를 복사
                let front = data.capacity - head
                newData[0..<front] = data[head..<data.capacity]
                if front < count {
                    newData[front + 1..<newData.capacity] = data[0..<count - front]
                }
            } else {
                newData[0..<tail - head] = data[head..<tail]
            }
        }
        
        return AnyIterator(IndexingIterator(_elements: newData.lazy))
    }
}

var circBuffer = CircularBuffer<Int>(4)

circBuffer.push(element: 100)
circBuffer.push(element: 120)
circBuffer.push(element: 125)
circBuffer.push(element: 130)

let x = circBuffer.pop()

let y = circBuffer.peek()

let z = circBuffer.pop()

circBuffer.push(element: 150)
circBuffer.push(element: 155)
circBuffer.push(element: 160)
// 이번 순환 버퍼의 용량은 4뿐이므로, 새로운 요소는 125를 덮어쓰게 됨

var circBufferIgnore = CircularBuffer<Int>(4, overwriteOperation: .ignore)
let cnt = circBufferIgnore.count

