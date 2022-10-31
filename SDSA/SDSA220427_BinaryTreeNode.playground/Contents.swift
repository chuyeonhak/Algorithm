import UIKit

let rootNode = BinaryTreeNode(value: 10)

rootNode.insertNodeFromRoot(value: 20)
rootNode.insertNodeFromRoot(value: 5)
rootNode.insertNodeFromRoot(value: 21)
rootNode.insertNodeFromRoot(value: 8)
rootNode.insertNodeFromRoot(value: 4)

dump(rootNode)

// 재귀적으로 노드를 순회하는 인오더 트리 워크

print("-------------------- inOrder --------------------")
BinaryTreeNode.traverseInOrder(node: rootNode)
print("-------------------- preOrder --------------------")
BinaryTreeNode.traversePreOrder(node: rootNode)
print("-------------------- postOrder --------------------")
BinaryTreeNode.traversePostOrder(node: rootNode)

print("-------------------- searchInTree --------------------")
print("Search result: " + "\(rootNode.search(value: 1)?.value)")
print("Search result: " + "\(rootNode.search(value: 5)?.value)")

rootNode.leftChild?.delete()
rootNode.rightChild?.delete()
BinaryTreeNode.traverseInOrder(node: rootNode)

