import Foundation

public enum RedBlackTreeColor: Int {
    case red = 0
    case black = 1
}

public class RedBlackTreeNode<T: Comparable> {
    // 키값과 자식-부모 변수
    public var value: T
    public var leftChild: RedBlackTreeNode?
    public var rightChild: RedBlackTreeNode?
    public weak var parent: RedBlackTreeNode?
    // 컬러 변수
    public var color: RedBlackTreeColor
    //초기화
    public convenience init(value: T) {
        self.init(value: value, left: nil, right: nil, parent: nil, color: .black)
    }
    
    public init(value:T,
                left: RedBlackTreeNode?,
                right: RedBlackTreeNode?,
                parent: RedBlackTreeNode?,
                color: RedBlackTreeColor) {
        self.value = value
        self.color = color
        self.leftChild = left
        self.rightChild = right
        self.parent = parent
    }
    
    // MARK: 도우미 메소드
    // 노드의 조부 노드를 반환하거나, 해당 노드가 없을 경우 nil을 반환함
    public func grandParentNode() -> RedBlackTreeNode? {
        guard let grandParentNode = self.parent?.parent else { return nil }
        return grandParentNode
    }
    
    // 노드이 삼촌 노드를 반환하거나, 해당 노드가 없을 경우 nil을 반환함
    // 삼촌 노드는 부모 노드의 형제를 의미함
    public func uncleNode() -> RedBlackTreeNode? {
        guard let grandParent = self.grandParentNode() else { return nil }
        
        if parent === grandParent.leftChild {
            return grandParent.rightChild
        } else {
            return grandParent.leftChild
        }
    }
    
    // 트리의 상단에서 하단에 이르는 모든 레이어를
    // 그에 포함된 노드의 값과 컬러를 표함해서 출력
    public static func printTree(nodes: [RedBlackTreeNode]) {
        var children: [RedBlackTreeNode] = Array()
        for node: RedBlackTreeNode in nodes {
            print("\(node.value) \(node.color)")
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
    
    // 좌측 회전
    public func rotateRight() {
        guard let parent = parent else { return }

        // 1. 나중의 사용을 위해 임시 참조값을 저장함
        let grandParent = parent.parent,
            newRightChildsLeftChild = self.rightChild
        var wasLeftChild = false
        
        if parent === grandParent?.leftChild {
            wasLeftChild = true
        }
        
        // 2. 기존의 부모 노드가 새 우측 자식 노드가 됨
        self.rightChild = parent
        self.rightChild?.parent = self
        
        // 3. 기존의 조부 노드가 새 부모 노드가 됨
        self.parent = grandParent
        if wasLeftChild {
            grandParent?.leftChild = self
        } else {
            grandParent?.rightChild = self
        }
        
        // 4. 기존의 우측 자식 노드가 새로운 우측 자식의 좌측 자식 노드가 됨
        self.rightChild?.leftChild = newRightChildsLeftChild
        self.rightChild?.leftChild?.parent = self.rightChild
    }
    
    // 우측 회전
    public func rotateLeft() {
        guard let parent = parent else { return }

        // 1. 나중의 사용을 위해 임시 참조값을 저장함
        let grandParent = parent.parent,
            newLeftChildsRightChild = self.leftChild
        var wasLeftChild = false
        
        if parent === grandParent?.leftChild {
            wasLeftChild = true
        }
        
        // 2. 기존의 부모 노드가 새 좌측 자식 노드가 됨
        self.leftChild = parent
        self.leftChild?.parent = self
        
        // 3. 기존의 조부 노드가 새 부모 노드가 됨
        self.parent = grandParent
        if wasLeftChild {
            grandParent?.leftChild = self
        } else {
            grandParent?.rightChild = self
        }
        
        // 4. 기존의 좌측 자식 노드가 새로운 우측 자식의 우측 자식 노드가 됨
        self.rightChild?.leftChild = newLeftChildsRightChild
        self.rightChild?.leftChild?.parent = self.leftChild
    }
    
    // MARK: 삽입
    // 삽입 메서드
    public func insertNodeFromRoot(value: T) {
        // 이진 검색 트리의 속성을 유지하기 위해
        // 루트 노드에서 insertNode 작업을 수행해야 함
        if let _ = self.parent {
            // 부모 노드가 있다면, 그 노드는 루트 노드가 아님
            print("You can only add new nodes from the root node of the tree")
            return
        }
        self.addNode(value: value)
    }
    
    private func addNode(value: T) {
        if value < self.value {
            // 해당 값이 루트의 값보다 작은 경우,
            // 좌측 서브트리에 노드를 삽입
            // 좌측 서브트리가 존재한다면 해당 위치에 삽입하고,
            // 그렇지 않은 경우, 새로운 노드 생성 후 좌측 자식 요소로 추가
            if let leftChild = leftChild {
                leftChild.addNode(value: value)
            } else {
                let newNode = RedBlackTreeNode(value: value)
                newNode.parent = self
                newNode.color = .red
                leftChild = newNode
                // Review tree color structrue
                insertionReviewStep1(node: newNode)
            }
        } else {
            // 해당 값이 루트의 값보다 큰 경우,
            // 우측 서브트리에 노드를 삽입
            // 우측 서브트리가 존재한다면 해당 위치에 삽입하고,
            // 그렇지 않은 경우, 새로운 노드 생성 후 우측 자식 요소로 추가
            if let rightChild = rightChild {
                rightChild.addNode(value: value)
            } else {
                let newNode = RedBlackTreeNode(value: value)
                newNode.parent = self
                newNode.color = .red
                rightChild = newNode
                insertionReviewStep1(node: newNode)
            }
        }
    }
    
    // 1. 루트 노드는 블랙임
    private func insertionReviewStep1(node: RedBlackTreeNode) {
        if let _ = node.parent {
            insertionReviewStep2(node: node)
        } else {
            node.color = .black
        }
    }
    
    // 2. 부모 노드가 블랙인가?
    private func insertionReviewStep2(node: RedBlackTreeNode) {
        if node.parent?.color == .black {
            return
        }
        insertionReviewStep3(node: node)
    }
    
    // 3. 부모와 삼촌이 레드인가?
    private func insertionReviewStep3(node: RedBlackTreeNode) {
        if let uncle = node.uncleNode() {
            if uncle.color == .red {
                node.parent?.color = .black
                uncle.color = .black
                if let grandParent = node.grandParentNode() {
                    grandParent.color = .red
                    insertionReviewStep1(node: grandParent)
                }
                return
            }
        }
        insertionReviewStep4(node: node)
    }
    
    // 4. 부모는 레드, 삼촌은 블랙인 경우. 해당 노드는
    // 우측 자식의 좌측 자식 또는 좌측 자식의 우측 자식 노드임
    private func insertionReviewStep4(node: RedBlackTreeNode) {
        var node = node
        guard let grandParent = node.grandParentNode() else { return }
        
        if node === node.parent?.rightChild &&
            node.parent === grandParent.leftChild {
            node.parent?.rotateLeft()
            node = node.leftChild!
        } else if node === node.parent?.leftChild &&
                    node.parent === grandParent.rightChild {
            node.parent?.rotateRight()
            node = node.rightChild!
        }
        insertionReviewStep5(node: node)
    }
    
    // 5. 부모는 레드, 삼촌은 블랙. 노드는 좌측 자식의
    // 좌측 자식 노드 또는 우측 자식의 우측 자식 노드가 된다.
    private func insertionReviewStep5(node: RedBlackTreeNode) {
        guard let grandParent = node.grandParentNode() else { return }
        node.parent?.color = .black
        grandParent.color = .red
        if node === node.parent?.leftChild {
            grandParent.rotateRight()
        } else {
            grandParent.rotateLeft()
        }
    }
}
