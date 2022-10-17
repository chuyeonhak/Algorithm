import UIKit


// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//짝수와 홀수
//문제 설명
//정수 num이 짝수일 경우 "Even"을 반환하고 홀수인 경우 "Odd"를 반환하는 함수, solution을 완성해주세요.
//
//제한 조건
//num은 int 범위의 정수입니다.
//0은 짝수입니다.

//func solution(_ num:Int) -> String { num % 2 == 0 ? "Even": "Odd" }
//
//solution(3)
//solution(4)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//평균 구하기
//문제 설명
//정수를 담고 있는 배열 arr의 평균값을 return하는 함수, solution을 완성해보세요.
//
//제한사항
//arr은 길이 1 이상, 100 이하인 배열입니다.
//arr의 원소는 -10,000 이상 10,000 이하인 정수입니다.

//func solution(_ arr:[Int]) -> Double { arr.reduce(0.0) { $0 + Double($1) } / Double(arr.count) }
//
//solution([1,2,3,4])
//solution([5,5])

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//약수의 합
//문제 설명
//정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.
//
//제한 사항
//n은 0 이상 3000이하인 정수입니다.

//func solution(_ n:Int) -> Int {
//    guard n != 0 else { return 0 }
//    return (1...n).filter { n % $0 == 0 }.reduce(0, +)
//}
//
//solution(12)
//solution(5)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//자릿수 더하기
//문제 설명
//자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 return 하는 solution 함수를 만들어 주세요.
//예를들어 N = 123이면 1 + 2 + 3 = 6을 return 하면 됩니다.
//
//제한사항
//N의 범위 : 100,000,000 이하의 자연수

//func solution(_ n:Int) -> Int { String(n).reduce(0) { $0 + Int(String($1))! } }
//
//solution(123)
//solution(987)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//정수 제곱근 판별
//문제 설명
//임의의 양의 정수 n에 대해, n이 어떤 양의 정수 x의 제곱인지 아닌지 판단하려 합니다.
//n이 양의 정수 x의 제곱이라면 x+1의 제곱을 리턴하고, n이 양의 정수 x의 제곱이 아니라면 -1을 리턴하는 함수를 완성하세요.
//
//제한 사항
//n은 1이상, 50000000000000 이하인 양의 정수입니다.

//func solution(_ n:Int64) -> Int64 {
//    let rootN = sqrt(Double(n))
//    if String(rootN).hasSuffix(".0") {
//        return Int64(pow(rootN + 1.0, 2))
//    } else {
//        return -1
//    }
//}
//
//solution(121)
//solution(3)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//자연수 뒤집어 배열로 만들기
//문제 설명
//자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요. 예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.
//
//제한 조건
//n은 10,000,000,000이하인 자연수입니다.

//func solution(_ n:Int64) -> [Int] { String(n).reversed().map { Int(String($0))! } }
//
//solution(12345)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//문자열 내 p와 y의 개수
//문제 설명
//대문자와 소문자가 섞여있는 문자열 s가 주어집니다. s에 'p'의 개수와 'y'의 개수를 비교해 같으면 True, 다르면 False를 return 하는 solution를 완성하세요. 'p', 'y' 모두 하나도 없는 경우는 항상 True를 리턴합니다. 단, 개수를 비교할 때 대문자와 소문자는 구별하지 않습니다.
//
//예를 들어 s가 "pPoooyY"면 true를 return하고 "Pyy"라면 false를 return합니다.
//
//제한사항
//문자열 s의 길이 : 50 이하의 자연수
//문자열 s는 알파벳으로만 이루어져 있습니다.

func solution(_ s:String) -> Bool { s.filter { $0.lowercased() == "p" }.count == s.filter { $0.lowercased() == "y" }.count }

solution("pPoooyY")
solution("Pyy")

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
