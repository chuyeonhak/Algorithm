import Foundation


precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

public class StringSearch {
    // 문자열 배열을 활용한 브루트 포스 구현
    public static func bruteForce(serach pattern: [Character], in text: [Character]) {
        // m과 n을 추출함
        let m = pattern.count - 1
        let n = text.count - 1
        // 텍스트에서 패턴을 검색
        for index in 0...n - m {
            let substringToMatch = text[index...index+m]
            print(substringToMatch)
            if substringToMatch == pattern[0...m] {
                print("Pattern found")
            }
        }
    }
    
    public static func bruteForce(search pattern: String, in text: String) {
        // Extract m and n
        let m = pattern.count
        let n = text.count
        
        // Search for the pattern in the text
        for index in 0...n - m {
            let start = text.index(text.startIndex, offsetBy: index)
            let end = text.index(text.startIndex, offsetBy: index + m - 1)
            let substringToMatch = text[start...end]
            print(substringToMatch)
            
            if substringToMatch == pattern {
                print("Pattern found")
            }
        }
    }
    
    public static func rabinKarpNumbers(search pattern: String, in text: String, modulo: Int, base: Int) {
        // 1. 초기화
        // Put the pattern and the text into arrays of string ->
        // So "123" will be ["1", "2", "3"]
        let patternArray = pattern.map { String($0) },
            textArray = text.map { String($0) },
            n = textArray.count,
            m = patternArray.count,
            h = (base ^^ (m-1)) % modulo
        var patternModulo = 0,
            lastTextModulo = 0
        
        // 2. 패턴 modulo와 텍스트의 첫 번재 자릿수의 modulo를 계산한다.
        // (이후 modulo 산술 연산 프로퍼티로 다음 자릿수도 계산한다.)
        for i in 0...m-1 {
            guard let nextPatternDigit = Int(patternArray[i]),
                  let nextTextDigit = Int(textArray[i]) else {
                print("error")
                return
            }
            patternModulo = (base * patternModulo + nextPatternDigit) % modulo
            lastTextModulo = (base * lastTextModulo + nextTextDigit) % modulo
        }
        
        // 3. 동등 여부를 확인하고, 다음 자릿수의 modulo를 계산한다.
        for s in 0...n - m - 1 {
            // 패턴 모듈로를 이용해서 마지막 modulo를 계산한다.
            if patternModulo == lastTextModulo {
                // 동등한 모듈러를 찾았다. 이제 이들 숫자 조합의 모든 자릿수도 같은지 확인한다.
                // 자릿수가 일부 달라도 모듈로는 같을 수 있으므로 확인 작업이 필요하다.
                let substringToMatch = textArray[s...s + m - 1].joined(separator: "")
                if pattern == substringToMatch {
                    print("Pattern occurs at shift: \(s)")
                } else {
                    print("Same modulo but not same pattern: \(s)")
                }
            }
            
            // 다음 숫자 그룹의 모듈러를 계산한다.
            if s < n - m {
                guard let hightOrderDigit = Int(textArray[s]),
                      let lowOrderDigit = Int(textArray[s + m]) else {
                    print("Error")
                    return
                }
                
                // 다음 모듈러를 계산하려면 숫자 그룹 왼쪽에 위치한 높은 단위의
                // 모듈러를 빼고, 다음 단계에서 낮은 단위의 모듈러를 더한다.
                
                // 1. 높은 단위 자릿수의 모듈러를 뺀다.
                var substractedHightOrderDigit = (base * (lastTextModulo - hightOrderDigit * h)) % modulo
                if substractedHightOrderDigit < 0 {
                    // 모듈러가 음수인 경우, 이를 양수로 바꾼다.
                    // (스위프트 % 연산자는 나머지 연산자이지)
                    // modulo 연산자는 아니기 때문이다.
                    substractedHightOrderDigit = substractedHightOrderDigit + modulo
                }
                
                // 2. 새로운 낮은 단위 자릿수를 더한다.
                var next = (substractedHightOrderDigit + lowOrderDigit) % modulo
                if next < 0 {
                    // 모듈로가 음수인 경우, 이를 양수로 바꾼다.
                    next = next + modulo
                }
                lastTextModulo = next
            }
        }
    }
}
