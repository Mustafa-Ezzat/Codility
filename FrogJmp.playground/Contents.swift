import Foundation

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    var T = Y - X
    var S = T/D
    if T%D > 0 {
        S += 1
    }
    return S
}

solution(10, 85, 30)
