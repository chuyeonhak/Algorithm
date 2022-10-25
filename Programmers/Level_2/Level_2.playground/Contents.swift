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

func solution(_ s:String) -> String {
    var str = s.components(separatedBy: " ")
    var answer = ""
    
    for i in str {
        for (index, char) in i.enumerated() {
            if index == 0 {
                answer += char.uppercased()
            } else {
                answer += char.lowercased()
            }
        }
        answer += " "
    }
    answer.removeLast()
    
    return answer
}

solution("3people unFollowed me")       // "3people Unfollowed Me"
solution("for the last week")           // "For The Last Week"
    
    
