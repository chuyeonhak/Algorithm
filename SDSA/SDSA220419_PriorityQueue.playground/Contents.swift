struct PriorityQueue<T: Comparable> {
    fileprivate var heap = [T]()
    
    private let ordered: (T, T) -> Bool
    
    init(ascending: Bool = false, startingValues: [T] = []) {
        self.init(order: ascending ? { $0 > $1 } : { $0 < $1 }, startingValue: startingValues)
    }
    
    init(order: @escaping (T, T) -> Bool, startingValue:[T] = []) {
        ordered = order
        
        heap = startingValue
        var i = heap.count / 2 - 1
        while i >= 0 {
            sink(i)
            i -= 1
        }
    }
    
    /// 우선순위 큐에 몇 개의 요소가 저장돼 있는지 확인
    var count: Int { return heap.count }
    
    /// 우선순위 큐가 빈 경우 true를 반환
    var isEmpty: Bool { return heap.isEmpty }
    
    /// 우선순위 큐에 새 요소를 추가
    /// - parameters:해당 요소는 우선순위 큐에 삽입돼야 함
    mutating func push(_ element: T) {
        heap.append(element)
        swim(heap.count - 1)
    }
    
    /// 최우선순위의 요소를 큐에서 제거하고 반환
    /// (하강순위인 경우 순위가 가장 낮은 요소를 제거 및 반환)
    /// - returns: 큐에 있는 최우선순위의 요소를 반환하거나
    /// PriorityQueue가 빈 경우 nil을 반환
    mutating func pop() -> T? {
        
        if heap.isEmpty { return nil }
        let count = heap.count
        if count == 1 { return heap.removeFirst() }
        
        fastPop(newCount: count - 1)
        
        return heap.removeLast()
    }
    
    /// 특정 아이템의 첫 번째 반환 내용을 삭제하고
    /// == 기호를 이용해서 값을 비교
    /// 반환 내용이 없을 경우 그냥 넘어감
    /// - parameter item: 삭제할 첫 번째 반환 아이템
    mutating func remove(_ item: T) {
        if let index = heap.firstIndex(of: item) {
            heap.swapAt(index, heap.count - 1)
            heap.removeLast()
            if index < heap.count {
                swim(index)
                sink(index)
            }
        }
    }
    
    /// 특정 아이템의 모든 반환 내용을 삭제하고
    /// == 기호를 이용해서 값을 찾음
    /// 반환 내용이 없을 경우 그냥 넘어감
    /// - parameter item: 삭제할 모든 아이템
    mutating func removeAll(_ item: T) {
        var lastCount = heap.count
        remove(item)
        while (heap.count < lastCount) {
            lastCount = heap.count
            remove(item)
        }
    }
    
    /// O(1)인 현재 최우선순위 아이템을 찾아서 삭제하지 않고 가져옴
    /// - returns: PriorityQueue에서 우선순위가 가장 높은 아이템
    /// 또는 PriorityQueue가 빈 경우 nil을 반환
    func peek() -> T? { return heap.first }
    
    /// PriorityQueue에서 모든 요소를 제거
    mutating func clear() {
        heap.removeAll(keepingCapacity: false)
    }
    
    mutating func sink(_ index: Int) {
        var index = index
        while 2 * index + 1 < heap.count {
            var j = 2 * index + 1
            if j < (heap.count - 1) && ordered(heap[j], heap[j + 1]) { j += 1 }
            if !ordered(heap[index], heap[j]) { break }
            
            heap.swapAt(index, j)
            index = j
        }
    }
    
    mutating func swim(_ index: Int) {
        var index = index
        while index > 0 && ordered(heap[(index - 1) / 2], heap[index]) {
            heap.swapAt((index - 1) / 2, index)
            index = (index - 1) / 2
        }
    }
    
    /// 팝을 도와주는 함수
    /// 첫번째와 마지막 요소를 스왑하고 다음 첫 번째 요소를 싱크한다.
    /// 이 기능을 실행한 후 `heap.removeLast()`를 호출하면 팝된 요소가 반환
    /// - Parameter newCount: `pop()`작업이 완료된 후 힙에 있는 요소의 수
    mutating func fastPop(newCount: Int) {
        var index = 0
        heap.withUnsafeMutableBufferPointer { bufferPointer in
            let _heap = bufferPointer.baseAddress! // 카운트가 0보다 크므로 옵셔널이 아님
            swap(&_heap[0], &_heap[newCount])
            while 2 * index + 1 < newCount {
                var j = 2 * index + 1
                if j < (newCount - 1) && ordered(_heap[j], _heap[j + 1]) { j += 1 }
                if !ordered(_heap[index], _heap[j]) { return }
                swap(&_heap[index], &_heap[j])
                index = j
            }
        }
    }
}

extension PriorityQueue: IteratorProtocol {
    public typealias Element = T
    mutating func next() -> Element? { return pop() }
}

extension PriorityQueue: Sequence {
    typealias Iterator = PriorityQueue
    func makeIterator() -> Iterator { return self }
}

extension PriorityQueue: Collection {
    typealias Index = Int
    
    var startIndex: Int { return heap.startIndex }
    var endIndex: Int { return heap.endIndex }
    
    subscript(i: Int) -> T { return heap[i] }
    
    func index(after i: PriorityQueue.Index) -> PriorityQueue.Index {
        return heap.index(after: i)
    }
}

extension PriorityQueue: CustomStringConvertible, CustomDebugStringConvertible {
    var description: String { return heap.description }
    
    var debugDescription: String { return heap.debugDescription }
}

var priorityQueue = PriorityQueue<String>(ascending: false, startingValues: ["Coldplay", "OneRepublic", "Maroon 5", "Imagine Dragons", "The Script"])

//var x = priorityQueue.pop()

//x = priorityQueue.pop()


for x in priorityQueue {
    print(x)
}

priorityQueue[2]
priorityQueue[4]

priorityQueue.endIndex
