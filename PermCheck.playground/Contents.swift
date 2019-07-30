import Foundation

public func solution(_ A : inout [Int]) -> Int {
    guard A.count > 0 else {
        return 1
    }
    var set = Set<Int>()
    for item in A {
        set.insert(item)
    }
    print(set.count)
    guard set.count == A.count else {
        return 0
    }
    A = A.sorted()
    return A[A.count - 1] == A.count ? 1 : 0
}
var A = [4, 1, 3, 2]
solution(&A)
