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

//func solution(_ s:String) -> Int {
//    let numberTupleList = [("zero", 0), ("one", 1), ("two", 2), ("three", 3), ("four", 4), ("five", 5), ("six", 6), ("seven", 7), ("eight", 8), ("nine", 9)]
//    var result = s
//
//    for i in numberTupleList {
//        result = result.replacingOccurrences(of: i.0, with: String(i.1))
//    }
//
//    return Int(result)!
//}
//
//solution("one4seveneight")
//solution("23four5six7")
//solution("2three45sixseven")
//solution("123")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//서울에서 김서방 찾기
//문제 설명
//String형 배열 seoul의 element중 "Kim"의 위치 x를 찾아, "김서방은 x에 있다"는 String을 반환하는 함수, solution을 완성하세요. seoul에 "Kim"은 오직 한 번만 나타나며 잘못된 값이 입력되는 경우는 없습니다.
//
//제한 사항
//seoul은 길이 1 이상, 1000 이하인 배열입니다.
//seoul의 원소는 길이 1 이상, 20 이하인 문자열입니다.
//"Kim"은 반드시 seoul 안에 포함되어 있습니다.

//func solution(_ seoul:[String]) -> String { "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다" }
//
//solution(["Jane", "Kim"])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//핸드폰 번호 가리기
//문제 설명
//프로그래머스 모바일은 개인정보 보호를 위해 고지서를 보낼 때 고객들의 전화번호의 일부를 가립니다.
//전화번호가 문자열 phone_number로 주어졌을 때, 전화번호의 뒷 4자리를 제외한 나머지 숫자를 전부 *으로 가린 문자열을 리턴하는 함수, solution을 완성해주세요.
//
//제한 조건
//phone_number는 길이 4 이상, 20이하인 문자열입니다.

//func solution(_ phone_number:String) -> String {
//    return String(Array(repeating: Character("*"), count: phone_number.count - 4)) + phone_number.suffix(4)
//}
//
//solution("01033334444")
//solution("027778888")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//나누어 떨어지는 숫자 배열
//문제 설명
//array의 각 element 중 divisor로 나누어 떨어지는 값을 오름차순으로 정렬한 배열을 반환하는 함수, solution을 작성해주세요.
//divisor로 나누어 떨어지는 element가 하나도 없다면 배열에 -1을 담아 반환하세요.
//
//제한사항
//arr은 자연수를 담은 배열입니다.
//정수 i, j에 대해 i ≠ j 이면 arr[i] ≠ arr[j] 입니다.
//divisor는 자연수입니다.
//array는 길이 1 이상인 배열입니다.

//func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
//    let result = arr.filter { $0 % divisor == 0 }.sorted()
//    return result.isEmpty ? [-1] : result
//}
//
//solution([5, 9, 7, 10], 5)
//solution([2, 36, 1, 3], 1)
//solution([3,2,6], 10)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//제일 작은 수 제거하기
//문제 설명
//정수를 저장한 배열, arr 에서 가장 작은 수를 제거한 배열을 리턴하는 함수, solution을 완성해주세요. 단, 리턴하려는 배열이 빈 배열인 경우엔 배열에 -1을 채워 리턴하세요. 예를들어 arr이 [4,3,2,1]인 경우는 [4,3,2]를 리턴 하고, [10]면 [-1]을 리턴 합니다.
//
//제한 조건
//arr은 길이 1 이상인 배열입니다.
//인덱스 i, j에 대해 i ≠ j이면 arr[i] ≠ arr[j] 입니다.

//func solution(_ arr:[Int]) -> [Int] {
//    var result = arr
//    result.remove(at: arr.firstIndex(of: arr.min()!)!)
//
//    return result.isEmpty ? [-1]: result
//}
//
//solution([4, 3, 2, 1])
//solution([10])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//음양 더하기
//문제 설명
//어떤 정수들이 있습니다. 이 정수들의 절댓값을 차례대로 담은 정수 배열 absolutes와 이 정수들의 부호를 차례대로 담은 불리언 배열 signs가 매개변수로 주어집니다. 실제 정수들의 합을 구하여 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//absolutes의 길이는 1 이상 1,000 이하입니다.
//absolutes의 모든 수는 각각 1 이상 1,000 이하입니다.
//signs의 길이는 absolutes의 길이와 같습니다.
//signs[i] 가 참이면 absolutes[i] 의 실제 정수가 양수임을, 그렇지 않으면 음수임을 의미합니다.

//func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
//    var result = 0
//    absolutes.enumerated()
//        .forEach({ index in
//            switch signs[index.offset] {
//            case true:
//                result += index.element
//            case false:
//                result -= index.element
//            }
//    })
//    return result
//}
//
//solution([4,7,12], [true,false,true])
//solution([1,2,3], [false,false,true])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//없는 숫자 더하기
//문제 설명
//0부터 9까지의 숫자 중 일부가 들어있는 정수 배열 numbers가 매개변수로 주어집니다. numbers에서 찾을 수 없는 0부터 9까지의 숫자를 모두 찾아 더한 수를 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//1 ≤ numbers의 길이 ≤ 9
//0 ≤ numbers의 모든 원소 ≤ 9
//numbers의 모든 원소는 서로 다릅니다.

//func solution(_ numbers:[Int]) -> Int { 45 - numbers.reduce(0, +) }
//
//solution([1,2,3,4,6,7,8,0])
//solution([5,8,4,0,6,7,9])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//수박수박수박수박수박수?
//문제 설명
//길이가 n이고, "수박수박수박수...."와 같은 패턴을 유지하는 문자열을 리턴하는 함수, solution을 완성하세요. 예를들어 n이 4이면 "수박수박"을 리턴하고 3이라면 "수박수"를 리턴하면 됩니다.

//func solution(_ n:Int) -> String {
//    (1...n).map {
//        if $0 % 2 != 0 {
//            return "수"
//        } else {
//            return "박"
//        }
//    }.joined()
//}

//func solution(_ n:Int) -> String {
//    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
//}
//
//solution(3)
//solution(4)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//가운데 글자 가져오기
//문제 설명
//단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.
//
//재한사항
//s는 길이가 1 이상, 100이하인 스트링입니다.

//func solution(_ s:String) -> String {
//    guard s.count > 2 else { return s }
//    let first = String(s[s.index(s.startIndex, offsetBy: s.count / 2 - 1)])
//    let second = String(s[s.index(s.startIndex, offsetBy: s.count / 2)])
//    return s.count % 2 == 0 ? first + second : String(s[s.index(s.startIndex, offsetBy: s.count / 2)])
//}
//func solution(_ s:String) -> String {
//    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
//}
//
//solution("abcde")
//solution("qwer")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//내적
//문제 설명
//길이가 같은 두 1차원 정수 배열 a, b가 매개변수로 주어집니다. a와 b의 내적을 return 하도록 solution 함수를 완성해주세요.
//
//이때, a와 b의 내적은 a[0]*b[0] + a[1]*b[1] + ... + a[n-1]*b[n-1] 입니다. (n은 a, b의 길이)
//
//제한사항
//a, b의 길이는 1 이상 1,000 이하입니다.
//a, b의 모든 수는 -1,000 이상 1,000 이하입니다.

//func solution(_ a:[Int], _ b:[Int]) -> Int { zip(a, b) .reduce(0) { $0 + $1.0 * $1.1 } }
//
//solution([1,2,3,4], [-3,-1,0,2])
//solution([-1,0,1], [1,0,-1])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//문자열 내림차순으로 배치하기
//문제 설명
//문자열 s에 나타나는 문자를 큰것부터 작은 순으로 정렬해 새로운 문자열을 리턴하는 함수, solution을 완성해주세요.
//s는 영문 대소문자로만 구성되어 있으며, 대문자는 소문자보다 작은 것으로 간주합니다.
//
//제한 사항
//str은 길이 1 이상인 문자열입니다.

//func solution(_ s:String) -> String { String(s.sorted(by: >)) }
//
//solution("Zbcdefg")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//문자열 다루기 기본
//문제 설명
//문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인해주는 함수, solution을 완성하세요. 예를 들어 s가 "a234"이면 False를 리턴하고 "1234"라면 True를 리턴하면 됩니다.
//
//제한 사항
//s는 길이 1 이상, 길이 8 이하인 문자열입니다.
//s는 영문 알파벳 대소문자 또는 0부터 9까지 숫자로 이루어져 있습니다.

//func solution(_ s:String) -> Bool { (s.count == 4 || s.count == 6) && Int(s) != nil }
//
//solution("a234")
//solution("1234")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//약수의 개수와 덧셈
//문제 설명
//두 정수 left와 right가 매개변수로 주어집니다. left부터 right까지의 모든 수들 중에서, 약수의 개수가 짝수인 수는 더하고, 약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//1 ≤ left ≤ right ≤ 1,000

//func solution(_ left:Int, _ right:Int) -> Int {
//    let arr = Array(left...right).map { i in
//        (1...i).filter { j in
//            i % j == 0
//        }.count
//    }
//
//    return zip(arr ,Array(left...right)).reduce(0) { $0 + ($1.0 % 2 == 0 ? $1.1: -$1.1 )}
//}
//
//solution(13, 17)
//solution(24, 27)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//행렬의 덧셈
//문제 설명
//행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다. 2개의 행렬 arr1과 arr2를 입력받아, 행렬 덧셈의 결과를 반환하는 함수, solution을 완성해주세요.
//
//제한 조건
//행렬 arr1, arr2의 행과 열의 길이는 500을 넘지 않습니다.

//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    var tempArr = Array(repeating: Array(repeating: 0, count: arr1.map({ $0.count }).first!), count: arr1.count)
//    for i in 0..<tempArr.count {
//        for j in 0..<tempArr.map({ $0.count }).first! {
//            tempArr[i][j] = arr1[i][j] + arr2[i][j]
//        }
//    }
//
//    return tempArr
//}
//
//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    return zip(arr1, arr2).map{ zip($0, $1).map{ $0+$1 }}
//}
//
//solution([[1,2],[2,3]], [[3,4],[5,6]])
//solution([[1],[2]], [[3],[4]])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//부족한 금액 계산하기
//문제 설명
//새로 생긴 놀이기구는 인기가 매우 많아 줄이 끊이질 않습니다. 이 놀이기구의 원래 이용료는 price원 인데, 놀이기구를 N 번 째 이용한다면 원래 이용료의 N배를 받기로 하였습니다. 즉, 처음 이용료가 100이었다면 2번째에는 200, 3번째에는 300으로 요금이 인상됩니다.
//놀이기구를 count번 타게 되면 현재 자신이 가지고 있는 금액에서 얼마가 모자라는지를 return 하도록 solution 함수를 완성하세요.
//단, 금액이 부족하지 않으면 0을 return 하세요.
//
//제한사항
//놀이기구의 이용료 price : 1 ≤ price ≤ 2,500, price는 자연수
//처음 가지고 있던 금액 money : 1 ≤ money ≤ 1,000,000,000, money는 자연수
//놀이기구의 이용 횟수 count : 1 ≤ count ≤ 2,500, count는 자연수

//func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
//    let sum = (1...count).reduce(0) { $0 + price * $1 }
//
//    return money - sum > 0 ? 0 : Int64(sum - money)
//}
//
//solution(3, 20, 4)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//직사각형 별찍기
//문제 설명
//이 문제에는 표준 입력으로 두 개의 정수 n과 m이 주어집니다.
//별(*) 문자를 이용해 가로의 길이가 n, 세로의 길이가 m인 직사각형 형태를 출력해보세요.
//
//제한 조건
//n과 m은 각각 1000 이하인 자연수입니다.

//let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//let (a, b) = (n[0], n[1])
//
//
//(1...b).forEach { _ in print(String(repeating: "*", count: a)) }
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//최대공약수와 최소공배수
//문제 설명
//두 수를 입력받아 두 수의 최대공약수와 최소공배수를 반환하는 함수, solution을 완성해 보세요. 배열의 맨 앞에 최대공약수, 그다음 최소공배수를 넣어 반환하면 됩니다. 예를 들어 두 수 3, 12의 최대공약수는 3, 최소공배수는 12이므로 solution(3, 12)는 [3, 12]를 반환해야 합니다.
//
//제한 사항
//두 수는 1이상 1000000이하의 자연수입니다.

//func solution(_ n:Int, _ m:Int) -> [Int] {
//    let gcd = (1...m).filter { n % $0 == 0 && m % $0 == 0 }.last!
//    let lcm = (n * m) / gcd
//
//    return [gcd, lcm]
//}
//
//solution(3, 12)
//solution(2, 5)
//solution(1000000, 1000000)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//이상한 문자 만들기
//문제 설명
//문자열 s는 한 개 이상의 단어로 구성되어 있습니다. 각 단어는 하나 이상의 공백문자로 구분되어 있습니다. 각 단어의 짝수번째 알파벳은 대문자로, 홀수번째 알파벳은 소문자로 바꾼 문자열을 리턴하는 함수, solution을 완성하세요.
//
//제한 사항
//문자열 전체의 짝/홀수 인덱스가 아니라, 단어(공백을 기준)별로 짝/홀수 인덱스를 판단해야합니다.
//첫 번째 글자는 0번째 인덱스로 보아 짝수번째 알파벳으로 처리해야 합니다.
//func solution(_ s:String) -> String {
//    s.components(separatedBy: " ")
//        .map {
//            $0.enumerated().map { str in
//                if str.offset % 2 == 0 {
//                    return str.element.uppercased()
//                } else {
//                    return str.element.lowercased()
//                }
//            }.joined()
//        }.joined(separator: " ")
//}
//
//solution("try hello world")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//3진법 뒤집기
//문제 설명
//자연수 n이 매개변수로 주어집니다. n을 3진법 상에서 앞뒤로 뒤집은 후, 이를 다시 10진법으로 표현한 수를 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//n은 1 이상 100,000,000 이하인 자연수입니다.

//func solution(_ n:Int) -> Int {
//    var result = 0
//    let count = String(n, radix: 3).count
//
//    String(n, radix: 3).enumerated().forEach {
//        let ternary = pow(3, ($0.offset))
//        result += Int(String($0.element))! * NSDecimalNumber(decimal: ternary).intValue
//    }
//
//    return result
//}

//func solution(_ n:Int) -> Int { Int(String(String(n, radix: 3).reversed()), radix: 3)! }
//
//
//solution(45)
//solution(125)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//예산
//문제 설명
//S사에서는 각 부서에 필요한 물품을 지원해 주기 위해 부서별로 물품을 구매하는데 필요한 금액을 조사했습니다. 그러나, 전체 예산이 정해져 있기 때문에 모든 부서의 물품을 구매해 줄 수는 없습니다. 그래서 최대한 많은 부서의 물품을 구매해 줄 수 있도록 하려고 합니다.
//
//물품을 구매해 줄 때는 각 부서가 신청한 금액만큼을 모두 지원해 줘야 합니다. 예를 들어 1,000원을 신청한 부서에는 정확히 1,000원을 지원해야 하며, 1,000원보다 적은 금액을 지원해 줄 수는 없습니다.
//
//부서별로 신청한 금액이 들어있는 배열 d와 예산 budget이 매개변수로 주어질 때, 최대 몇 개의 부서에 물품을 지원할 수 있는지 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//d는 부서별로 신청한 금액이 들어있는 배열이며, 길이(전체 부서의 개수)는 1 이상 100 이하입니다.
//d의 각 원소는 부서별로 신청한 금액을 나타내며, 부서별 신청 금액은 1 이상 100,000 이하의 자연수입니다.
//budget은 예산을 나타내며, 1 이상 10,000,000 이하의 자연수입니다.

func solution(_ d:[Int], _ budget:Int) -> Int {
    guard d.reduce(0, +) > budget else { return d.count }
    return 0
}

solution([1,3,2,5,4], 9)
solution([2,2,3,3], 10)

