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

let requestKey: String = "NSURLRequestKey"

// NSError 서브클래스. 추가적인 기능을 제공하지만 원래 기능을 엉망으로 만들진 않는다.
class RequestError: NSError {
    var request: NSURLRequest? {
        return self.userInfo[requestKey] as? NSURLRequest
    }
}

//
//func fetchData(request: NSURLRequest) -> (data: NSData?, error: RequestError?) {
//    let userInfo: [String: Any] = [requestKey: request]
//
//    return (nil, RequestError(domain: "DOMAIN", code: 0, userInfo: userInfo))
//}
//
//// RequestError가 무엇인지 모르고 실패할 것이며, NSError를 반환한다.
//func willReturnObjectOrError() -> (object: AnyObject?, error: NSError?) {
//    let request = NSURLRequest()
//    let result = fetchData(request: request)
//
//    return (result.data, result.error)
//}
//
//let result = willReturnObjectOrError()
//
//// 확인. 이것은 내 관점에서 완벽한 NSError 인스턴스이다.
//let error: Int? = result.error?.code
//
//if let requestError = result.error as? RequestError {
//    requestError.request
//}
//
//protocol TimeTraveling {
//    func travelInTime(time: TimeInterval) -> String
//}
//
//final class DeLorean: TimeTraveling {
//    func travelInTime(time: TimeInterval) -> String {
//        return "Used Flux Capacitor and travelled in time by: \(time)s"
//    }
//}
//
//final class EmmettBrown {
//    private let timeMachine: TimeTraveling
//
//
//    // ⚠️ Emmet Brown은 `DeLorean`을 구체적인 클래스인 `DeLorean`이 아닌, `TimeTraveling` 장치로 받는다.
//    init(timeMachine: TimeTraveling) {
//        self.timeMachine = timeMachine
//    }
//
//    func travelInTime(time: TimeInterval) -> String {
//        return timeMachine.travelInTime(time: time)
//    }
//}
//
//let timeMachine = DeLorean()
//
//let mastermind = EmmettBrown(timeMachine: timeMachine)
//mastermind.travelInTime(time: -3600 * 8760)
//

