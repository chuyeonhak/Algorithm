import UIKit
import Foundation

// 이웃 목록 그래프 생성
var adjacencyList: AdjacencyListGraph<String> = AdjacencyListGraph<String>()

//꼭지점 추가
let vertexA = adjacencyList.addVertex(data: "A")
let vertexB = adjacencyList.addVertex(data: "B")
let vertexC = adjacencyList.addVertex(data: "C")
let vertexD = adjacencyList.addVertex(data: "D")

// 모서리 추가
let edgeAB = adjacencyList.addEdge(from: vertexA, to: vertexB)
let edgeBC = adjacencyList.addEdge(from: vertexB, to: vertexC)
let edgeCD = adjacencyList.addEdge(from: vertexC, to: vertexD)

print(adjacencyList)

