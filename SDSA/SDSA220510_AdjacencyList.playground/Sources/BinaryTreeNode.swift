import Foundation

public class BinaryTreeNode<T: Comparable> {
    // Value와 자식 변수
    public var value: T
    public var leftChild: BinaryTreeNode?
    public var rightChild: BinaryTreeNode?
    public var parent: BinaryTreeNode?
    
    // 초기화
    public init(value: T,
                left: BinaryTreeNode?,
                right: BinaryTreeNode?,
                parent: BinaryTreeNode?) {
        self.value = value
        self.leftChild = left
        self.rightChild = right
        self.parent = parent
    }
    
    public convenience init(value: T) {
        self.init(value: value, left: nil, right: nil, parent: nil)
    }
    
    public class func depthFirstSearch(node: BinaryTreeNode?) {
        // nil인 노드에 도달하면 재귀적인 호출을 중지함
        guard let node = node else { return }
        
        // leftChild로 메서드를 재귀적으로 호출한 뒤 해당 값을 출력하고
        // rightChild로 메서드를 재귀적으로 호출한다.
        depthFirstSearch(node: node.leftChild)
        print(node.val)
        depthFirstSearch(node: node.rightChild)
        
    }

    
}

