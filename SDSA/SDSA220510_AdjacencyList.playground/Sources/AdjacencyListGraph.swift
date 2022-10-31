import Foundation

public struct AdjacencyListGraph<T: Equatable & Hashable> {
    public var adjacencyLists: [VertexEdgesList<T>] = []
    public var vertices: [Vertex<T>] {
        get {
            var vertices = [Vertex<T>]()
            for list in adjacencyLists {
                vertices.append(list.vertex)
            }
            return vertices
        }
    }
    
    public var edges:[Edge<T>] {
        get {
            var edges = Set<Edge<T>>()
            for list in adjacencyLists {
                for edge in list.edges {
                    edges.insert(edge)
                }
            }
            return Array(edges)
        }
    }
    
    public mutating func addVertex(data: T) -> Vertex<T> {
        // 꼭지점이 있는지 확인함
        for list in adjacencyLists {
            if list.vertex.data == data {
                return list.vertex
            }
        }
        
        // 꼭지점을 생성한 뒤 그래프를 업데이트하고 반환함
        let vertex: Vertex<T> = Vertex(data: data, index: adjacencyLists.count),
            adjacencyList = VertexEdgesList(vertex: vertex)
        adjacencyLists.append(adjacencyList)
        return vertex
    }
    
    public mutating func addEdge(from: Vertex<T>, to: Vertex<T>) -> Edge<T> {
        let edge = Edge(from: from, to: to),
            list = adjacencyLists[from.index]
        // 모서리가 있는지 확인함
        if list.edges.count > 0 {
            for existingEdge in list.edges {
                if existingEdge == edge {
                    return existingEdge
                }
            }
            adjacencyLists[from.index].edges.append(edge)
        } else {
            adjacencyLists[from.index].edges = [edge]
        }
        return edge
    }
    
    public init() {}
}

extension AdjacencyListGraph: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String {
        "AdjacencyListGraph \(adjacencyLists), \(vertices) \n"
    }
    
    public var debugDescription: String {
        "AdjacencyListGraph \(adjacencyLists), \(vertices) \n"
    }
}
