import Foundation

public func solution(_ A : inout [Int]) -> Int {
    guard A.count > 0 else {
        return 1
    }
    guard A.count > 1 else {
        if A[0] == 1 {
            return A[0] + 1
        }
        return A[0] - 1
    }
    A = A.sorted()
    let actual = A.reduce(0, +)
    var expected = 0
    for i in A[0]...A.count+1 {
        expected += i
    }
    if (expected - actual) > 0 {
        return (expected - actual)
    } else {
        return 1
    }
}

var A = [3,2,51]
solution(&A)
