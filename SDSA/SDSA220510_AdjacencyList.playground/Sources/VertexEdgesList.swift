import Foundation

public struct VertexEdgesList<T: Equatable & Hashable> {
    // 각각의 VertexEdgesList에는 해당 꼭지점과 그에 연결된 또 다른
    // 꼭지점의 정보를 담고 있는 모서리 배열 데이터가 포함된다.
    public let vertex: Vertex<T>
    public var edges: [Edge<T>] = []
    
    public init(vertex: Vertex<T>) {
        self.vertex = vertex
    }
    
    public mutating func addEdge(edge: Edge<T>) {
        // Check if the edge exits
        if self.edges.count > 0 {
            let equalEdges = self.edges.filter() {
                existingEdge in
                return existingEdge == edge
            }
            if equalEdges.count > 0 {
                return
            }
        }
        
        self.edges.append(edge)
    }
}

extension VertexEdgesList: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        "VertexEdgesList \(vertex), \(edges)"
    }
    
    public var debugDescription: String {
        "VertexEdgesList \(vertex), \(edges)"
    }
}

