import Foundation


public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    // write your code in Swift 4.2.1 (Linux)
    guard A.count > 0 else {
        return A
    }
    let N = A.count
    var O = Array(repeating: 0, count: N)
    for i in 0..<N {
        O[(K+i)%N] = A[i]
    }
    return O
}
