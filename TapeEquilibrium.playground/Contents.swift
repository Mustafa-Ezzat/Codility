import Foundation


public func solution(_ A : inout [Int]) -> Int {
    guard A.count > 1 else {
        return A[0]
    }
    guard A.count > 2 else {
        return Int(abs(A[0] - A[1]))
    }
    /*A = A.map {
        return Int(abs($0))
    }*/
    var total = A.reduce(0, +)
    var left = A[0]
    var right = total - left
    var minGap = Int(abs(left - right))
    print(minGap)
    for i in 1..<A.count-1 {
        left = left + A[i]
        right = right - A[i]
        let gap = Int(abs(left - right))
        print(gap, ":", A[i])
        if gap < minGap {
            minGap = gap
        }
    }
    return minGap
}
/*
 
 |-10 -10| = 20
 |-30 -30| = 60
 |-60 -60| = 120
 |-100 -100| = 200
 
 */
var A = [3, 1, 2, 4, 3]
solution(&A)
