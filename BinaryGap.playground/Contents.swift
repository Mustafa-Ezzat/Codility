import Foundation

func isPowerOfTwo(_ n: inout Int) -> Bool
{
    if (n == 0) {
        return false
    }
    while (n != 1)
    {
        if (n%2 != 0) {
            return false
        }
        n = n/2;
    }
    return true
}

func binaryGap(_ N: Int) -> Int {
    var n = N
    if n == 0 || isPowerOfTwo(&n) {
        return 0
    }
    
    var setBit = 1, prev = 0, index = 0
    
    for _ in 0..<32 {
        prev += 1
        index += 1
        // left shift setBit by 1 to check next bit
        setBit = setBit << 1
        if (setBit&n) == setBit {
            break
        }
    }
    
    var max0 = Int.min, cur = prev
    
    for _ in (index+1)..<32 {
        cur += 1
        
        if (setBit&n) == setBit {
            if max0 < cur - prev - 1 {
                max0 = cur - prev - 1
            }
            prev = cur
        }
        setBit = setBit << 1
    }
    
    return max0
}

binaryGap(10)



