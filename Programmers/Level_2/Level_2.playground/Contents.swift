import UIKit

//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//최댓값과 최솟값
//문제 설명
//문자열 s에는 공백으로 구분된 숫자들이 저장되어 있습니다. str에 나타나는 숫자 중 최소값과 최대값을 찾아 이를 "(최소값) (최대값)"형태의 문자열을 반환하는 함수, solution을 완성하세요.
//예를들어 s가 "1 2 3 4"라면 "1 4"를 리턴하고, "-1 -2 -3 -4"라면 "-4 -1"을 리턴하면 됩니다.
//
//제한 조건
//s에는 둘 이상의 정수가 공백으로 구분되어 있습니다.

//func solution(_ s:String) -> String {
//    let str = s.components(separatedBy: " ").compactMap { Int($0) }
//
//    return "\(str.min()!) \(str.max()!)"
//}
//
//solution("1 2 3 4")     // "1 4"
//solution("-1 -2 -3 -4") // "-4 -1"
//solution("-1 -1")     // ""-1 -1""

//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//JadenCase 문자열 만들기
//문제 설명
//JadenCase란 모든 단어의 첫 문자가 대문자이고, 그 외의 알파벳은 소문자인 문자열입니다. 단, 첫 문자가 알파벳이 아닐 때에는 이어지는 알파벳은 소문자로 쓰면 됩니다. (첫 번째 입출력 예 참고)
//문자열 s가 주어졌을 때, s를 JadenCase로 바꾼 문자열을 리턴하는 함수, solution을 완성해주세요.
//
//제한 조건
//s는 길이 1 이상 200 이하인 문자열입니다.
//s는 알파벳과 숫자, 공백문자(" ")로 이루어져 있습니다.
//숫자는 단어의 첫 문자로만 나옵니다.
//숫자로만 이루어진 단어는 없습니다.
//공백문자가 연속해서 나올 수 있습니다.

//func solution(_ s:String) -> String {
//    var str = s.components(separatedBy: " ")
//    var answer = ""
//
//    for i in str {
//        for (index, char) in i.enumerated() {
//            if index == 0 {
//                answer += char.uppercased()
//            } else {
//                answer += char.lowercased()
//            }
//        }
//        answer += " "
//    }
//    answer.removeLast()
//
//    return answer
//}
//
//solution("3people unFollowed me")       // "3people Unfollowed Me"
//solution("for the last week")           // "For The Last Week"

//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//올바른 괄호
//문제 설명
//괄호가 바르게 짝지어졌다는 것은 '(' 문자로 열렸으면 반드시 짝지어서 ')' 문자로 닫혀야 한다는 뜻입니다. 예를 들어
//
//"()()" 또는 "(())()" 는 올바른 괄호입니다.
//")()(" 또는 "(()(" 는 올바르지 않은 괄호입니다.
//'(' 또는 ')' 로만 이루어진 문자열 s가 주어졌을 때, 문자열 s가 올바른 괄호이면 true를 return 하고, 올바르지 않은 괄호이면 false를 return 하는 solution 함수를 완성해 주세요.
//
//제한사항
//문자열 s의 길이 : 100,000 이하의 자연수
//문자열 s는 '(' 또는 ')' 로만 이루어져 있습니다.

//func solution(_ s:String) -> Bool {
//    var stack = [Character]()
//
//    for char in s {
//        if char == "(" {
//            stack.append(char)
//        } else {
//            guard !stack.isEmpty else { return false }
//            stack.popLast()
//        }
//    }
//
//    return stack.isEmpty
//}
//
//solution("()()")       // true
//solution("(())()")     // true
//solution(")()(")       // false
//solution("(()(")       // false
    
//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//최솟값 만들기
//문제 설명
//길이가 같은 배열 A, B 두개가 있습니다. 각 배열은 자연수로 이루어져 있습니다.
//배열 A, B에서 각각 한 개의 숫자를 뽑아 두 수를 곱합니다. 이러한 과정을 배열의 길이만큼 반복하며, 두 수를 곱한 값을 누적하여 더합니다. 이때 최종적으로 누적된 값이 최소가 되도록 만드는 것이 목표입니다. (단, 각 배열에서 k번째 숫자를 뽑았다면 다음에 k번째 숫자는 다시 뽑을 수 없습니다.)
//
//예를 들어 A = [1, 4, 2] , B = [5, 4, 4] 라면
//
//A에서 첫번째 숫자인 1, B에서 첫번째 숫자인 5를 뽑아 곱하여 더합니다. (누적된 값 : 0 + 5(1x5) = 5)
//A에서 두번째 숫자인 4, B에서 세번째 숫자인 4를 뽑아 곱하여 더합니다. (누적된 값 : 5 + 16(4x4) = 21)
//A에서 세번째 숫자인 2, B에서 두번째 숫자인 4를 뽑아 곱하여 더합니다. (누적된 값 : 21 + 8(2x4) = 29)
//즉, 이 경우가 최소가 되므로 29를 return 합니다.
//
//배열 A, B가 주어질 때 최종적으로 누적된 최솟값을 return 하는 solution 함수를 완성해 주세요.
//
//제한사항
//배열 A, B의 크기 : 1,000 이하의 자연수
//배열 A, B의 원소의 크기 : 1,000 이하의 자연수

//func solution(_ A:[Int], _ B:[Int]) -> Int { zip(A.sorted(by: <), B.sorted(by: >)).reduce(0) { $0 + ($1.0 * $1.1)} }
//
//solution([1, 4, 2], [5, 4, 4])
//solution([1,2], [3,4])
//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//이진 변환 반복하기
//문제 설명
//0과 1로 이루어진 어떤 문자열 x에 대한 이진 변환을 다음과 같이 정의합니다.
//
//x의 모든 0을 제거합니다.
//x의 길이를 c라고 하면, x를 "c를 2진법으로 표현한 문자열"로 바꿉니다.
//예를 들어, x = "0111010"이라면, x에 이진 변환을 가하면 x = "0111010" -> "1111" -> "100" 이 됩니다.
//
//0과 1로 이루어진 문자열 s가 매개변수로 주어집니다. s가 "1"이 될 때까지 계속해서 s에 이진 변환을 가했을 때, 이진 변환의 횟수와 변환 과정에서 제거된 모든 0의 개수를 각각 배열에 담아 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//s의 길이는 1 이상 150,000 이하입니다.
//s에는 '1'이 최소 하나 이상 포함되어 있습니다.

func solution(_ s:String) -> [Int] {
    var copy = s
    var zeroCount: [Int] = []
    var transCount = 0
    
    while copy.count > 1 {
        let count = copy.count
        
        zeroCount.append(copy.filter { $0 == "0" }.count)
        copy = String(count - zeroCount[transCount], radix: 2)
        transCount += 1
    }
    
    return [transCount, zeroCount.reduce(0, +)]
}

solution("110010101001")        // [3,8]
solution("01110")               // [3,3]
solution("1111111")             // [4,1]
    
//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//    --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------