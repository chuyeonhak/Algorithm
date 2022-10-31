import UIKit

let rootNode = RedBlackTreeNode(value: 10)

rootNode.insertNodeFromRoot(value: 12)
rootNode.insertNodeFromRoot(value: 5)
rootNode.insertNodeFromRoot(value: 3)
rootNode.insertNodeFromRoot(value: 8)
rootNode.insertNodeFromRoot(value: 30)
rootNode.insertNodeFromRoot(value: 11)
rootNode.insertNodeFromRoot(value: 32)
rootNode.insertNodeFromRoot(value: 4)
rootNode.insertNodeFromRoot(value: 2)

RedBlackTreeNode.printTree(nodes: [rootNode])
