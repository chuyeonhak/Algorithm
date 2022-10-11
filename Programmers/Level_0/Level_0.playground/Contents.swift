import UIKit


// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//두 수의 곱
//문제 설명
//정수 num1, num2가 매개변수 주어집니다. num1과 num2를 곱한 값을 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//0 ≤ num1 ≤ 100
//0 ≤ num2 ≤ 100

//func solution(_ num1:Int, _ num2:Int) -> Int {
//    return num1 * num2
//}
//
//solution(3, 4)
//solution(27, 19)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//몫 구하기
//문제 설명
//정수 num1, num2가 매개변수로 주어질 때, num1을 num2로 나눈 몫을 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//0 < num1 ≤ 100
//0 < num2 ≤ 100

//func solution(_ num1:Int, _ num2:Int) -> Int { num1 / num2 }
//
//solution(10, 5)
//solution(7, 2)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//두 수의 합
//문제 설명
//정수 num1과 num2가 주어질 때, num1과 num2의 합을 return하도록 soltuion 함수를 완성해주세요.
//
//제한사항
//-50,000 ≤ num1 ≤ 50,000
//-50,000 ≤ num2 ≤ 50,000

//func solution(_ num1:Int, _ num2:Int) -> Int {
//    num1 + num2
//}
//
//solution(2, 3)
//solution(100, 2)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//나이 출력
//문제 설명
//머쓱이는 40살인 선생님이 몇 년도에 태어났는지 궁금해졌습니다. 나이 age가 주어질 때, 2022년을 기준 출생 연도를 return 하는 solution 함수를 완성해주세요.
//
//제한사항
//0 < age ≤ 120
//나이는 태어난 연도에 1살이며 1년마다 1씩 증가합니다.

//func solution(_ age:Int) -> Int {
//    guard age > 0, age <= 120 else { return 0 }
//    return 2023 - age
//}
//
//solution(40)
//solution(23)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//숫자 비교하기
//문제 설명
//정수 num1과 num2가 매개변수로 주어집니다. 두 수가 같으면 1 다르면 -1을 retrun하도록 solution 함수를 완성해주세요.
//
//제한사항
//0 ≤ num1 ≤ 10,000
//0 ≤ num2 ≤ 10,000

//func solution(_ num1:Int, _ num2:Int) -> Int {
//    return num1 == num2 ? 1 : -1
//}
//
//solution(2, 3)
//solution(11, 11)
//solution(7, 99)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//나머지 구하기
//문제 설명
//정수 num1, num2가 매개변수로 주어질 때, num1를 num2로 나눈 나머지를 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//0 < num1 ≤ 100
//0 < num2 ≤ 100

//func solution(_ num1:Int, _ num2:Int) -> Int {
//    guard num1 <= 100 && num1 >= 0,
//          num2 <= 100 && num2 >= 0 else { return 0 }
//    return num1 % num2
//}
//
//solution(3, 2)
//solution(10, 5)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//두 수의 차
//문제 설명
//정수 num1과 num2가 주어질 때, num1에서 num2를 뺀 값을 return하도록 soltuion 함수를 완성해주세요.
//
//제한사항
//-50000 ≤ num1 ≤ 50000
//-50000 ≤ num2 ≤ 50000

//func solution(_ num1:Int, _ num2:Int) -> Int {
//    return num1 - num2
//}
//
//solution(2, 3)
//solution(100, 2)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//짝수와 홀수
//문제 설명
//정수 num이 짝수일 경우 "Even"을 반환하고 홀수인 경우 "Odd"를 반환하는 함수, solution을 완성해주세요.
//
//제한 조건
//num은 int 범위의 정수입니다.
//0은 짝수입니다.

//func solution(_ num:Int) -> String {
//    num % 2 == 0 ? "Even": "Odd"
//}
//
//solution(3)
//solution(4)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//짝수는 싫어요
//문제 설명
//정수 n이 매개변수로 주어질 때, n 이하의 홀수가 오름차순으로 담긴 배열을 return하도록 solution 함수를 완성해주세요.
//
//제한사항
//1 ≤ n ≤ 100

//func solution(_ n:Int) -> [Int] {
//    var tempArr: [Int] = []
//    for i in (0...n) {
//        if i % 2 != 0 {
//            tempArr.append(i)
//        }
//    }
//    return tempArr
//}
//
//solution(10)
//solution(15)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//배열 두배 만들기
//문제 설명
//정수 배열 numbers가 매개변수로 주어집니다. numbers의 각 원소에 두배한 원소를 가진 배열을 return하도록 solution 함수를 완성해주세요.
//
//제한사항
//-10,000 ≤ numbers의 원소 ≤ 10,000
//1 ≤ numbers의 길이 ≤ 1,000

//func solution(_ numbers:[Int]) -> [Int] {
//    numbers.map { $0 * 2 }
//}
//
//solution([1, 2, 3, 4, 5])
//solution([1, 2, 100, -99, 1, 2, 3])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//중앙값 구하기
//문제 설명
//중앙값은 어떤 주어진 값들을 크기의 순서대로 정렬했을 때 가장 중앙에 위치하는 값을 의미합니다. 예를 들어 1, 2, 7, 10, 11의 중앙값은 7입니다. 정수 배열 array가 매개변수로 주어질 때, 중앙값을 return 하도록 solution 함수를 완성해보세요.
//
//제한사항
//array의 길이는 홀수입니다.
//0 < array의 길이 < 100
//-1,000 < array의 원소 < 1,000

//func solution(_ array:[Int]) -> Int {
//    array.sorted()[((array.count) / 2)]
//}
//
//solution([1, 2, 7, 10, 11])
//solution([9, -1, 0])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//문자열 계산하기
//문제 설명
//my_string은 "3 + 5"처럼 문자열로 된 수식입니다. 문자열 my_string이 매개변수로 주어질 때, 수식을 계산한 값을 return 하는 solution 함수를 완성해주세요.
//
//제한사항
//연산자는 +, -만 존재합니다.
//문자열의 시작과 끝에는 공백이 없습니다.
//0으로 시작하는 숫자는 주어지지 않습니다.
//잘못된 수식은 주어지지 않습니다.
//5 ≤ my_string의 길이 ≤ 100
//my_string을 계산한 결과값은 1 이상 100,000 이하입니다.
//my_string의 중간 계산 값은 -100,000 이상 100,000 이하입니다.
//계산에 사용하는 숫자는 1 이상 20,000 이하인 자연수입니다.
//my_string에는 연산자가 적어도 하나 포함되어 있습니다.
//return type 은 정수형입니다.
//my_string의 숫자와 연산자는 공백 하나로 구분되어 있습니다.

//func solution(_ my_string:String) -> Int {
//    my_string
//        .replacingOccurrences(of: " - ", with: " + -")
//        .components(separatedBy: " + ")
//        .reduce(0,  { $0 + Int($1)! })
//}
//
//solution("3 + 4")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//숨어있는 숫자의 덧셈 (2)
//문제 설명
//문자열 my_string이 매개변수로 주어집니다. my_string은 소문자, 대문자, 자연수로만 구성되어있습니다. my_string안의 자연수들의 합을 return하도록 solution 함수를 완성해주세요.
//
//제한사항
//1 ≤ my_string의 길이 ≤ 1,000
//1 ≤ my_string 안의 자연수 ≤ 1000
//연속된 수는 하나의 숫자로 간주합니다.
//000123과 같이 0이 선행하는 경우는 없습니다.

//func solution(_ my_string:String) -> Int {
//    my_string
//        .replacingOccurrences(of: "[a-z,A-Z]", with: " ", options: .regularExpression)
//        .replacingOccurrences(of: #"\ {1,}"#, with: "+", options: .regularExpression)
//        .split(separator: "+")
//        .reduce(0) { $0 + Int(String($1))! }
//}
//
//solution("aAb1B2cC34oOp")
//solution("1a2b3c4d123Z")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//최빈값 구하기
//문제 설명
//최빈값은 주어진 값 중에서 가장 자주 나오는 값을 의미합니다. 정수 배열 array가 매개변수로 주어질 때, 최빈값을 return 하도록 solution 함수를 완성해보세요. 최빈값이 여러 개면 -1을 return 합니다.
//
//제한사항
//0 < array의 길이 < 100
//-1000 < array의 원소 < 1000

//func solution(_ array:[Int]) -> Int {
//    guard array.count > 1 else { return 1 }
//    var tempDic: [Int: Int] = [:]
//
//    array.forEach {
//        let value = tempDic[$0]
//        tempDic.updateValue((value ?? 0) + 1, forKey: $0)
//    }
//
//    let sortedValues = tempDic.sorted { $0.value > $1.value }
//    return sortedValues[0].value == sortedValues[1].value ? -1: sortedValues[0].key
//}
//
//solution([1, 2, 3, 3, 3, 4])
//solution([1, 1, 2, 2])
//solution([1])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//로그인 성공?
//문제 설명
//머쓱이는 프로그래머스에 로그인하려고 합니다. 머쓱이가 입력한 아이디와 패스워드가 담긴 배열 id_pw와 회원들의 정보가 담긴 2차원 배열 db가 주어질 때, 다음과 같이 로그인 성공, 실패에 따른 메시지를 return하도록 solution 함수를 완성해주세요.
//
//아이디와 비밀번호가 모두 일치하는 회원정보가 있으면 "login"을 return합니다.
//로그인이 실패했을 때 아이디가 일치하는 회원이 없다면 “fail”를, 아이디는 일치하지만 비밀번호가 일치하는 회원이 없다면 “wrong pw”를 return 합니다.
//제한사항
//회원들의 아이디는 문자열입니다.
//회원들의 아이디는 알파벳 소문자와 숫자로만 이루어져 있습니다.
//회원들의 패스워드는 숫자로 구성된 문자열입니다.
//회원들의 비밀번호는 같을 수 있지만 아이디는 같을 수 없습니다.
//id_pw의 길이는 2입니다.
//id_pw와 db의 원소는 [아이디, 패스워드] 형태입니다.
//1 ≤ 아이디의 길이 ≤ 15
//1 ≤ 비밀번호의 길이 ≤ 6
//1 ≤ db의 길이 ≤ 10
//db의 원소의 길이는 2입니다.

//func solution(_ id_pw:[String], _ db:[[String]]) -> String {
//    var result = "fail"
//    db.forEach {
//        switch $0 {
//        case id_pw:
//            result = "login"
//        case _ where id_pw.first == $0.first && id_pw.last != $0.last:
//            result = "wrong pw"
//        default: break
//        }
//    }
//    return result
//}
//
//solution(["meosseugi", "1234"], [["rardss", "123"], ["yyoom", "1234"], ["meosseugi", "1234"]])
//solution(["programmer01", "15789"], [["programmer02", "111111"], ["programmer00", "134"], ["programmer01", "1145"]])
//solution(["rabbit04", "98761"], [["jaja11", "98761"], ["krong0313", "29440"], ["rabbit00", "111333"]])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//분수의 덧셈
//문제 설명
//첫 번째 분수의 분자와 분모를 뜻하는 denum1, num1, 두 번째 분수의 분자와 분모를 뜻하는 denum2, num2가 매개변수로 주어집니다. 두 분수를 더한 값을 기약 분수로 나타냈을 때 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.
//
//제한사항
//0 <denum1, num1, denum2, num2 < 1,000
//func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//let sumDenum = denum1 * num2 + denum2 * num1,
//        sumNum = num1 * num2
//
//    for i in (1 ... min(sumDenum, sumNum)).reversed() {
//        if sumDenum % i == 0 && sumNum % i == 0 {
//            return [sumDenum / i, sumNum / i]
//        }
//    }
//    return [sumDenum, sumNum]
//}
//
//solution(1, 2, 3, 4)
//solution(9, 2, 1, 3)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//다항식 더하기
//문제 설명
//한 개 이상의 항의 합으로 이루어진 식을 다항식이라고 합니다. 다항식을 계산할 때는 동류항끼리 계산해 정리합니다. 덧셈으로 이루어진 다항식 polynomial이 매개변수로 주어질 때, 동류항끼리 더한 결괏값을 문자열로 return 하도록 solution 함수를 완성해보세요. 같은 식이라면 가장 짧은 수식을 return 합니다.
//
//제한사항
//0 < polynomial에 있는 수 < 100
//
//polynomial에 변수는 'x'만 존재합니다.
//
//polynomial은 0부터 9까지의 정수, 공백, ‘x’, ‘+'로 이루어져 있습니다.
//
//항과 연산기호 사이에는 항상 공백이 존재합니다.
//
//공백은 연속되지 않으며 시작이나 끝에는 공백이 없습니다.
//
//하나의 항에서 변수가 숫자 앞에 오는 경우는 없습니다.
//
//" + 3xx + + x7 + "와 같은 잘못된 입력은 주어지지 않습니다.
//
//"012x + 001"처럼 0을 제외하고는 0으로 시작하는 수는 없습니다.
//
//문자와 숫자 사이의 곱하기는 생략합니다.
//
//polynomial에는 일차 항과 상수항만 존재합니다.
//
//계수 1은 생략합니다.
//
//결괏값에 상수항은 마지막에 둡니다.
//
//0 < polynomial의 길이 < 50
//func solution(_ polynomial:String) -> String {
//    let test = polynomial.components(separatedBy: " + ")
//    var hasX: Int = 0
//    var hasNot: Int = 0
//    
//    test.forEach {
//        if $0.hasSuffix("x") {
//            hasX += Int($0.dropLast(1)) ?? 1
//        } else {
//            hasNot += Int($0)!
//        }
//    }
//    
//    switch (hasX, hasNot) {
//    case (0, _):
//        return "\(hasNot)"
//    case (1, 0):
//        return "x"
//    case (1, _):
//        return "x + \(hasNot)"
//    case (_, 0):
//        return "\(hasX)x"
//    default:
//        return "\(hasX)x + \(hasNot)"
//    }
//}
//
//solution("3x + 7 + x")
//solution("x + x + x")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//문자열안에 문자열
//문제 설명
//문자열 str1, str2가 매개변수로 주어집니다. str1 안에 str2가 있다면 1을 없다면 2를 return하도록 solution 함수를 완성해주세요.
//
//제한사항
//1 ≤ str1의 길이 ≤ 100
//1 ≤ str2의 길이 ≤ 100
//func solution(_ str1:String, _ str2:String) -> Int { str1.contains(str2) ? 1 : 2 }
//
//solution("ab6CDE443fgh22iJKlmn1o", "6CD")
//solution("ppprrrogrammers", "pppp")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//각도기
//문제 설명
//각에서 0도 초과 90도 미만은 예각, 90도는 직각, 90도 초과 180도 미만은 둔각 180도는 평각으로 분류합니다. 각 angle이 매개변수로 주어질 때 예각일 때 1, 직각일 때 2, 둔각일 때 3, 평각일 때 4를 return하도록 solution 함수를 완성해주세요.
//
//예각 : 0 < angle < 90
//직각 : angle = 90
//둔각 : 90 < angle < 180
//평각 : angle = 180
//제한사항
//0 < angle ≤ 180
//angle은 정수입니다.
//func solution(_ angle:Int) -> Int {
//    switch angle {
//    case 1...89: return 1
//    case 90: return 2
//    case 90...179: return 3
//    case 180: return 4
//    default: return 0
//    }
//}
//
//solution(70)
//solution(91)
//solution(180)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//배열의 평균값
//문제 설명
//정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소의 평균값을 return하도록 solution 함수를 완성해주세요.
//
//제한사항
//0 ≤ numbers의 원소 ≤ 1,000
//1 ≤ numbers의 길이 ≤ 100
//정답의 소수 부분이 .0 또는 .5인 경우만 입력으로 주어집니다.

//func solution(_ numbers:[Int]) -> Double { numbers.reduce(0.0) { $0 + Double($1) } / Double(numbers.count) }
//
//solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
//solution([89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//짝수의 합
//문제 설명
//정수 n이 주어질 때, n이하의 짝수를 모두 더한 값을 return 하도록 solution 함수를 작성해주세요.
//
//제한사항
//0 < n ≤ 1000

//func solution(_ n:Int) -> Int {
//    guard n > 1 else { return 0 }
//    var result: Int = 0
//    for i in 2...n {
//        if i % 2 == 0 {
//            result += i
//        }
//    }
//
//    return result
//}
//
//solution(10)
//solution(4)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//중복된 숫자 개수
//문제 설명
//정수가 담긴 배열 array와 정수 n이 매개변수로 주어질 때, array에 n이 몇 개 있는 지를 return 하도록 solution 함수를 완성해보세요.
//
//제한사항
//1 ≤ array의 길이 ≤ 100
//0 ≤ array의 원소 ≤ 1,000
//0 ≤ n ≤ 1,000

//func solution(_ array:[Int], _ n:Int) -> Int {
//    var result = 0
//    array.forEach {
//        if $0 == n {
//            result += 1
//        }
//    }
//    return result
//}
//
//func solution(_ array: [Int], _ n: Int) -> Int { array.filter { $0 == n }.count }
//
//solution([1, 1, 2, 3, 4, 5], 1)
//solution([0, 2, 3, 4], 1)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//배열 자르기
//문제 설명
//정수 배열 numbers와 정수 num1, num2가 매개변수로 주어질 때, numbers의 num1번 째 인덱스부터 num2번째 인덱스까지 자른 정수 배열을 return 하도록 solution 함수를 완성해보세요.
//
//제한사항
//0 < numbers의 길이 ≤ 100
//0 ≤ numbers의 원소 ≤ 1,000
//0 <num1 < num2 < numbers의 길이

//func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
//    numbers.dropFirst(num1).dropLast(numbers.count - num2 - 1)
//}

//func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] { Array(numbers[num1...num2]) }
//
//solution([1, 2, 3, 4, 5], 1, 3)
//solution([1, 3, 5], 1, 2)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//배열 뒤집기
//문제 설명
//정수가 들어 있는 배열 num_list가 매개변수로 주어집니다. num_list의 원소의 순서를 거꾸로 뒤집은 배열을 return하도록 solution 함수를 완성해주세요.
//
//제한사항
//1 ≤ num_list의 길이 ≤ 1,000
//0 ≤ num_list의 원소 ≤ 1,000

//func solution(_ num_list:[Int]) -> [Int] { num_list.reversed() }
//
//solution([1, 2, 3, 4, 5])
//solution([1, 1, 1, 1, 1, 2])
//solution([1, 0, 1, 1, 1, 3, 5])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//문자 반복 출력하기
//문제 설명
//문자열 my_string과 정수 n이 매개변수로 주어질 때, my_string에 들어있는 각 문자를 n만큼 반복한 문자열을 return 하도록 solution 함수를 완성해보세요.
//
//제한사항
//1 ≤ my_string 길이 ≤ 50
//1 ≤ n ≤ 50
//"my_string"은 영어 대소문자로 이루어져 있습니다.

//func solution(_ my_string:String, _ n:Int) -> String {
//    var result = ""
//    for i in my_string  {
//        for _ in 0..<n {
//            result.append(i)
//        }
//    }
//    return result
//}
//
//solution("hello", 3)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//머쓱이보다 키 큰 사람
//문제 설명
//머쓱이는 학교에서 키 순으로 줄을 설 때 몇 번째로 서야 하는지 궁금해졌습니다. 머쓱이네 반 친구들의 키가 담긴 정수 배열 array와 머쓱이의 키 height가 매개변수로 주어질 때, 머쓱이보다 키 큰 사람 수를 return 하도록 solution 함수를 완성해보세요.
//
//제한사항
//1 ≤ array의 길이 ≤ 100
//1 ≤ height ≤ 200
//1 ≤ array의 원소 ≤ 200

//func solution(_ array:[Int], _ height:Int) -> Int { array.filter { $0 > height }.count }
//
//solution([149, 180, 192, 170], 167)
//solution([180, 120, 140], 190)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//짝수 홀수 개수
//문제 설명
//정수가 담긴 리스트 num_list가 주어질 때, num_list의 원소 중 짝수와 홀수의 개수를 담은 배열을 return 하도록 solution 함수를 완성해보세요.
//
//제한사항
//1 ≤ num_list의 길이 ≤ 100
//0 ≤ num_list의 원소 ≤ 1,000

//func solution(_ num_list:[Int]) -> [Int] {
//    [num_list.filter { $0 % 2 == 0 }.count, num_list.filter { $0 % 2 != 0 }.count]
//}
//
//solution([1, 2, 3, 4, 5])
//solution([1, 3, 5, 7])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//피자 나눠 먹기 (3)
//문제 설명
//머쓱이네 피자가게는 피자를 두 조각에서 열 조각까지 원하는 조각 수로 잘라줍니다. 피자 조각 수 slice와 피자를 먹는 사람의 수 n이 매개변수로 주어질 때, n명의 사람이 최소 한 조각 이상 피자를 먹으려면 최소 몇 판의 피자를 시켜야 하는지를 return 하도록 solution 함수를 완성해보세요.
//
//제한사항
//2 ≤ slice ≤ 10
//1 ≤ n ≤ 100

//func solution(_ slice:Int, _ n:Int) -> Int {
//    var result = 0
//    
//    while result * slice / n < 1 {
//        result += 1
//    }
//    
//    return result
//}

//func solution(_ slice: Int, _ n: Int) -> Int { n / slice + (n % slice > 0 ? 1 : 0) }
//
//solution(7, 10)
//solution(4, 12)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//숨어있는 숫자의 덧셈 (1)
//문제 설명
//문자열 my_string이 매개변수로 주어집니다. my_string안의 모든 자연수들의 합을 return하도록 solution 함수를 완성해주세요.
//
//제한사항
//1 ≤ my_string의 길이 ≤ 1,000
//my_string은 소문자, 대문자 그리고 한자리 자연수로만 구성되어있습니다.

//func solution(_ my_string:String) -> Int { my_string.reduce(0) { $0 + (Int(String($1)) ?? 0) } }

//solution("aAb1B2cC34oOp")
//solution("1a2b3c4d123")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//문자열 뒤집기
//문제 설명
//문자열 my_string이 매개변수로 주어집니다. my_string을 거꾸로 뒤집은 문자열을 return하도록 solution 함수를 완성해주세요.
//
//제한사항
//1 ≤ my_string의 길이 ≤ 1,000

//func solution(_ my_string:String) -> String { String(my_string.reversed()) }
//
//solution("jaron")
//solution("bread")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//양꼬치
//문제 설명
//머쓱이네 양꼬치 가게는 10인분을 먹으면 음료수 하나를 서비스로 줍니다. 양꼬치는 1인분에 12,000원, 음료수는 2,000원입니다. 정수 n과 k가 매개변수로 주어졌을 때, 양꼬치 n인분과 음료수 k개를 먹었다면 총얼마를 지불해야 하는지 return 하도록 solution 함수를 완성해보세요.
//
//제한사항
//0 < n < 1,000
//n / 10 ≤ k < 1,000
//서비스로 받은 음료수는 모두 마십니다.

//func solution(_ n:Int, _ k:Int) -> Int { 12000 * n + 2000 * (k - n / 10) }
//
//solution(10, 3)
//solution(64, 6)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//문자열 정렬하기 (2)
//문제 설명
//영어 대소문자로 이루어진 문자열 my_string이 매개변수로 주어질 때, my_string을 모두 소문자로 바꾸고 알파벳 순서대로 정렬한 문자열을 return 하도록 solution 함수를 완성해보세요.
//
//제한사항
//0 < my_string 길이 < 100

//func solution(_ my_string:String) -> String { String(my_string.lowercased().sorted()) }
//
//solution("Bcad")
//solution("heLLo")
//solution("Python")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//대문자와 소문자
//문제 설명
//문자열 my_string이 매개변수로 주어질 때, 대문자는 소문자로 소문자는 대문자로 변환한 문자열을 return하도록 solution 함수를 완성해주세요.
//
//제한사항
//1 ≤ my_string의 길이 ≤ 1,000
//my_string은 영어 대문자와 소문자로만 구성되어 있습니다.

//func solution(_ my_string:String) -> String { my_string.map { $0.isUppercase ? $0.lowercased(): $0.uppercased() }.joined() }
//
//solution("cccCCC")
//solution("abCdEfghIJ")
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//삼각형의 완성조건 (1)
//문제 설명
//선분 세 개로 삼각형을 만들기 위해서는 다음과 같은 조건을 만족해야 합니다.
//
//가장 긴 변의 길이는 다른 두 변의 길이의 합보다 작아야 합니다.
//삼각형의 세 변의 길이가 담긴 배열 sides이 매개변수로 주어집니다. 세 변으로 삼각형을 만들 수 있다면 1, 만들 수 없다면 2를 return하도록 solution 함수를 완성해주세요.
//
//제한사항
//sides의 원소는 자연수입니다.
//sides의 길이는 3입니다.
//1 ≤ sides의 원소 ≤ 1,000

//func solution(_ sides:[Int]) -> Int {
//    let sortedArr = sides.sorted(by: >)
//
//    return sortedArr[0] < sortedArr[1] + sortedArr[2] ? 1 : 2
//}
//
//solution([1, 2, 3])
//solution([3, 6, 2])
//solution([199, 72, 222])
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//세균 증식
//문제 설명
//어떤 세균은 1시간에 두배만큼 증식한다고 합니다. 처음 세균의 마리수 n과 경과한 시간 t가 매개변수로 주어질 때 t시간 후 세균의 수를 return하도록 solution 함수를 완성해주세요.
//
//제한사항
//1 ≤ n ≤ 10
//1 ≤ t ≤ 15

//func solution(_ n:Int, _ t:Int) -> Int { Int(pow(CGFloat(2), CGFloat(t))) * n }
//
//solution(2, 10)
//solution(7, 15)
// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

// --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
