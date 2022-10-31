import UIKit

var avlRootNode = AVLTreeNode(value: 100)
avlRootNode.insertNodeFroomRoot(value: 50)
avlRootNode.insertNodeFroomRoot(value: 200)
avlRootNode.insertNodeFroomRoot(value: 150)
avlRootNode.insertNodeFroomRoot(value: 125)
avlRootNode.insertNodeFroomRoot(value: 250)

avlRootNode.balanceFactor = 2
avlRootNode.rightChild?.balanceFactor = -1
avlRootNode.rightChild?.rightChild?.balanceFactor = 0
avlRootNode.rightChild?.leftChild?.balanceFactor = -1
avlRootNode.rightChild?.leftChild?.leftChild?.balanceFactor = 0
avlRootNode.leftChild?.balanceFactor = 0

print("Invalid AVL tree")
AVLTreeNode.printTree(nodes: [avlRootNode])
//: 불균형 상태를 해소기 위해 회전을 시행
if let newRoot = avlRootNode.rightChild?.leftChild?.rotateRightLeft() {
    avlRootNode = newRoot
}

//: 트리의 각 레이어를 출력
print("Valid AVL tree")
AVLTreeNode.printTree(nodes: [avlRootNode])

