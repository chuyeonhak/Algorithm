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

//func solution(_ s:String) -> Bool { s.filter { $0.lowercased() == "p" }.count == s.filter { $0.lowercased() == "y" }.count }

//solution("pPoooyY")
//solution("Pyy")

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//하샤드 수
//문제 설명
//양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 합니다. 예를 들어 18의 자릿수 합은 1+8=9이고, 18은 9로 나누어 떨어지므로 18은 하샤드 수입니다. 자연수 x를 입력받아 x가 하샤드 수인지 아닌지 검사하는 함수, solution을 완성해주세요.
//
//제한 조건
//x는 1 이상, 10000 이하인 정수입니다.

//func solution(_ x:Int) -> Bool { x % String(x).reduce(0) { $0 + Int(String($1))! } == 0 }
//
//solution(10)
//solution(12)
//solution(11)
//solution(13)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//정수 내림차순으로 배치하기
//문제 설명
//함수 solution은 정수 n을 매개변수로 입력받습니다. n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요. 예를들어 n이 118372면 873211을 리턴하면 됩니다.
//
//제한 조건
//n은 1이상 8000000000 이하인 자연수입니다.

//func solution(_ n:Int64) -> Int64 { Int64(String(String(n).sorted { $0 > $1 }))! }
//
//solution(118372)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//문자열을 정수로 바꾸기
//문제 설명
//문자열 s를 숫자로 변환한 결과를 반환하는 함수, solution을 완성하세요.
//
//제한 조건
//s의 길이는 1 이상 5이하입니다.
//s의 맨앞에는 부호(+, -)가 올 수 있습니다.
//s는 부호와 숫자로만 이루어져있습니다.
//s는 "0"으로 시작하지 않습니다.

//func solution(_ s:String) -> Int { Int(s)! }
//
//solution("1234")
//solution("-1234")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//x만큼 간격이 있는 n개의 숫자
//문제 설명
//함수 solution은 정수 x와 자연수 n을 입력 받아, x부터 시작해 x씩 증가하는 숫자를 n개 지니는 리스트를 리턴해야 합니다. 다음 제한 조건을 보고, 조건을 만족하는 함수, solution을 완성해주세요.
//제한 조건
//x는 -10000000 이상, 10000000 이하인 정수입니다.
//n은 1000 이하인 자연수입니다.

//func solution(_ x:Int, _ n:Int) -> [Int64] { (1...n).map { Int64($0 * x) } }
//
//solution(2, 5)
//solution(4, 3)
//solution(-4, 2)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//나머지가 1이 되는 수 찾기
//문제 설명
//자연수 n이 매개변수로 주어집니다. n을 x로 나눈 나머지가 1이 되도록 하는 가장 작은 자연수 x를 return 하도록 solution 함수를 완성해주세요. 답이 항상 존재함은 증명될 수 있습니다.
//
//제한사항
//3 ≤ n ≤ 1,000,000

//func solution(_ n:Int) -> Int { (1...n).filter { n % $0 == 1 }.first! }
//
//func solution(_ n: Int) -> Int {
//    var answer = 1
//
//    while n % answer != 1 {
//        answer += 1
//    }
//    return answer
//}
//
//solution(10)
//solution(12)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//콜라츠 추측
//문제 설명
//1937년 Collatz란 사람에 의해 제기된 이 추측은, 주어진 수가 1이 될 때까지 다음 작업을 반복하면, 모든 수를 1로 만들 수 있다는 추측입니다. 작업은 다음과 같습니다.
//
//1-1. 입력된 수가 짝수라면 2로 나눕니다.
//1-2. 입력된 수가 홀수라면 3을 곱하고 1을 더합니다.
//2. 결과로 나온 수에 같은 작업을 1이 될 때까지 반복합니다.
//예를 들어, 주어진 수가 6이라면 6 → 3 → 10 → 5 → 16 → 8 → 4 → 2 → 1 이 되어 총 8번 만에 1이 됩니다. 위 작업을 몇 번이나 반복해야 하는지 반환하는 함수, solution을 완성해 주세요. 단, 주어진 수가 1인 경우에는 0을, 작업을 500번 반복할 때까지 1이 되지 않는다면 –1을 반환해 주세요.
//
//제한 사항
//입력된 수, num은 1 이상 8,000,000 미만인 정수입니다.

//func solution(_ num:Int) -> Int {
//    var result = num
//    var count = 0
//
//    while result != 1 && count < 500 {
//        guard result != 1 else { return count }
//        count += 1
//        if result % 2 == 0 {
//            result = result / 2
//        } else {
//            result = result * 3 + 1
//        }
//    }
//
//    return count == 500 ? -1 : count
//}
//
//solution(6)
//solution(16)
//solution(626331)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//두 정수 사이의 합
//문제 설명
//두 정수 a, b가 주어졌을 때 a와 b 사이에 속한 모든 정수의 합을 리턴하는 함수, solution을 완성하세요.
//예를 들어 a = 3, b = 5인 경우, 3 + 4 + 5 = 12이므로 12를 리턴합니다.
//
//제한 조건
//a와 b가 같은 경우는 둘 중 아무 수나 리턴하세요.
//a와 b는 -10,000,000 이상 10,000,000 이하인 정수입니다.
//a와 b의 대소관계는 정해져있지 않습니다.

//func solution(_ a:Int, _ b:Int) -> Int64 {
//    if a >= b {
//        return (Int64(b)...Int64(a)).reduce(0, +)
//    } else {
//        return (Int64(a)...Int64(b)).reduce(0, +)
//    }
//}
//
//func solution(_ a:Int, _ b:Int) -> Int64 {
//    return Int64(a + b) * Int64(max(a, b) - min(a, b) + 1) / Int64(2)
//}
//
//solution(3, 5)
//solution(3, 3)
//solution(5, 3)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//숫자 문자열과 영단어
//문제 설명
//
//네오와 프로도가 숫자놀이를 하고 있습니다. 네오가 프로도에게 숫자를 건넬 때 일부 자릿수를 영단어로 바꾼 카드를 건네주면 프로도는 원래 숫자를 찾는 게임입니다.
//
//다음은 숫자의 일부 자릿수를 영단어로 바꾸는 예시입니다.
//
//1478 → "one4seveneight"
//234567 → "23four5six7"
//10203 → "1zerotwozero3"
//이렇게 숫자의 일부 자릿수가 영단어로 바뀌어졌거나, 혹은 바뀌지 않고 그대로인 문자열 s가 매개변수로 주어집니다. s가 의미하는 원래 숫자를 return 하도록 solution 함수를 완성해주세요.
//
//참고로 각 숫자에 대응되는 영단어는 다음 표와 같습니다.
//제한사항
//1 ≤ s의 길이 ≤ 50
//s가 "zero" 또는 "0"으로 시작하는 경우는 주어지지 않습니다.
//return 값이 1 이상 2,000,000,000 이하의 정수가 되는 올바른 입력만 s로 주어집니다.

func solution(_ s:String) -> Int {
    let numberTupleList = [("zero", 0), ("one", 1), ("two", 2), ("three", 3), ("four", 4), ("five", 5), ("six", 6), ("seven", 7), ("eight", 8), ("nine", 9)]
    var result = s

    for i in numberTupleList {
        result = result.replacingOccurrences(of: i.0, with: String(i.1))
    }
    
    return Int(result)!
}

solution("one4seveneight")
solution("23four5six7")
solution("2three45sixseven")
solution("123")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
