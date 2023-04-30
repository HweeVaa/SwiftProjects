/* 고차함수
 다른 함수를 전달 인자로 받거나 함수 실행의 결과를 함수로 반환하는 함수
 map, filter, reduce
 */

//map: 각 인자를 연산한 새로운 어레이 생성
let numbers = [0,1,2,3]
let mapArray = numbers.map { (number) -> Int in
    return number*2
}
print("map \(mapArray)")

//filter: 어레이에 조건을 걸어 필터링한 어레이 생성
let intArray = [10,5,20,13,4]
let filterArray = intArray.filter { $0 > 5}
print("filter \(filterArray)")

//reduce: 각 요소값을 더한 값을 출력
let someArray = [1,2,3,4,5]
let reduceResult = someArray.reduce(0) {
    (result: Int, element: Int) -> Int in
    print("\(result) + \(element)")
    return result + element
}
print("reduce \(reduceResult)")
