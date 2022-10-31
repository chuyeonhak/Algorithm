import Foundation

public class AVLTreeNode<T: Comparable> {
    // 키값과 자식-부모 변수
    public var value: T
    public var leftChild: AVLTreeNode?
    public var rightChild: AVLTreeNode?
    public weak var parent: AVLTreeNode?
    public var balanceFactor: Int = 0
    // 초기화
    public convenience init(value: T) {
        self.init(value: value, left: nil, right: nil, parent: nil)
    }
    
    public init(value:T, left: AVLTreeNode?, right: AVLTreeNode?, parent: AVLTreeNode?) {
        self.value = value
        self.leftChild = left
        self.rightChild = right
        self.parent = parent
        self.balanceFactor = 0
    }
    
    // 단순 좌측 회전 메소드 구현
    public func rotateLeft() -> AVLTreeNode {
        guard let parent = parent else { return self }
        
        // 1단계 : 회전
        // 0. 나중에 사용할 수 있도록 임시 참조값을 저장
        let grandParent = parent.parent
        let newLeftChildsRightChild = self.leftChild
        var wasLeftChild = false
        
        if parent === grandParent?.leftChild { wasLeftChild = true }
        
        // 1. 기존의 부모 노드가 새로운 좌측 자식 노드가 됨
        self.leftChild = parent
        self.leftChild?.parent = self
        
        // 2. 기존의 조부 노드가 새로운 부모 노드가 됨
        self.parent = grandParent
        wasLeftChild ? (grandParent?.leftChild = self) : (grandParent?.rightChild = self)
        
        // 3. 기존의 좌측 자식 노드가 새로운 좌측 자식의 우측 자식 노드가 됨
        self.leftChild?.rightChild = newLeftChildsRightChild
        self.leftChild?.rightChild?.parent = self.leftChild
        
        // 2 단계: 높이 업데이트
        if self.balanceFactor == 0 {
            self.balanceFactor = -1
            self.leftChild?.balanceFactor = 1
        } else {
            self.balanceFactor = 0
            self.leftChild?.balanceFactor = 0
        }
        return self
    }
    
    // 단순 우측 회전 메소드 구현
    public func rotateRight() -> AVLTreeNode {
        guard let parent = parent else { return self }
        
        // 1단계 : 회전
        // 0. 나중에 사용할 수 있도록 임시 참조값을 저장
        let grandParent = parent.parent
        let newRightChildsLeftChild = self.rightChild
        var wasLeftChild = false
        
        if parent === grandParent?.leftChild { wasLeftChild = true }
        
        // 1. 기존의 부모 노드가 새로운 우측 자식 노드가 됨
        self.rightChild = parent
        self.rightChild?.parent = self
        
        // 2. 기존의 조부 노드가 새로운 부모 노드가 됨
        self.parent = grandParent
        wasLeftChild ? (grandParent?.leftChild = self) : (grandParent?.rightChild = self)
        
        // 3. 기존의 우측 자식 노드가 새로운 우측 자식의 좌측 자식 노드가 됨
        self.rightChild?.leftChild = newRightChildsLeftChild
        self.rightChild?.leftChild?.parent = self.rightChild
        
        // 2 단계: 높이 업데이트
        if self.balanceFactor == 0 {
            self.balanceFactor = 1
            self.leftChild?.balanceFactor = -1
        } else {
            self.balanceFactor = 0
            self.leftChild?.balanceFactor = 0
        }
        return self
    }
    
    // 우좌 이중 회전
    public func rotateRightLeft() -> AVLTreeNode {
        // 1: 이중 회전
        _ = self.rotateRight()
        _ = self.rotateLeft()
        
        // 2: 균형 요소 업데이트
        switch self.balanceFactor {
        case 1...:
            self.leftChild?.balanceFactor = -1
            self.rightChild?.balanceFactor = 0
        case 0:
            self.leftChild?.balanceFactor = 0
            self.rightChild?.balanceFactor = 0
        default:
            self.leftChild?.balanceFactor = 0
            self.rightChild?.balanceFactor = 1
        }
        self.balanceFactor = 0
        return self
    }
    
    // 삽입 메서드 구현
    public func insertNodeFroomRoot(value: T) {
        // 이진 검색 트리 속성을 유지하기 위해 루트
        // 노드에서 insertNode 메서드를 실행해야 함
        if let _ = self.parent {
            // 만일 부모가 있다면 루트 노드가 아님
            print("you can only add new nodes from the root node of the tree")
            return
        }
        self.addNode(value: value)
    }
    
    private func addNode(value:T) {
        if value < self.value {
            // 삽입할 노드의 값은 루트 노드 값보다 작은 경우,
            // 좌측 서브트리에 삽입해야 함
            
            // 좌측 서브트리에 삽입하되, 만일 좌측 서브트리가 존재하지
            // 않으면 새로운 노드를 생성하고 좌측 자식 노드로 삼음
            if let leftChild = leftChild {
                leftChild.addNode(value: value)
            } else {
                let newNode = AVLTreeNode(value: value)
                newNode.parent = self
                leftChild = newNode
            }
        } else {
            // 삽입할 노드의 값은 루트 노드 값보다 큰 경우,
            // 우측 서브트리 노드에 삽입해야 함
            
            // 우측 서브트리에 삽입하되, 우측 서브트리가 존재하지 않으면
            // 새로운 노드를 생성하고 우측 자식 노드로 삼음
            if let rightChild = rightChild {
                rightChild.addNode(value: value)
            } else {
                let newNode = AVLTreeNode(value: value)
                newNode.parent = self
                rightChild = newNode
            }
        }
    }
    
    // 트리의 상단부터 하단에 이르는 모든 레이어의 노드 값과 균형 요소를 출력
    public static func printTree(nodes: [AVLTreeNode]) {
        var children = [AVLTreeNode]()
        for node: AVLTreeNode in nodes {
            print("\(node.value) \(node.balanceFactor)")
            if let leftChild = node.leftChild {
                children.append(leftChild)
            }
            if let rightChild = node.rightChild {
                children.append(rightChild)
            }
        }
        if children.count > 0 {
            printTree(nodes: children)
        }
    }
}
