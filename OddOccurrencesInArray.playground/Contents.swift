import Foundation

public func solution(_ A : inout [Int]) -> Int {
    var countedSet = NSCountedSet(array: A)
    var result = -1
    for item in countedSet {
        if countedSet.count(for: item as! Int) < 2 {
            result = item as! Int
            break
        }
    }
    return result
}
var A = [9,3,9,3,7,9]
let result = solution(&A)
