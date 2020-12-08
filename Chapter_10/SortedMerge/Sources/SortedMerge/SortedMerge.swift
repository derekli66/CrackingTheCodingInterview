/*
    Cracking the coding interview - 10.1 Sorted Merge
 */

class Solution {
    
    open func sortedMerge(first: inout [Int], elementCount: Int, second: [Int]) -> Int {
        assert(first.count - elementCount >= second.count)
        
        var arrayA = first
        let arrayB = second
        var total = elementCount
        var index = total - 1
        
        for idx in (0..<arrayB.count).reversed() {
            while (index >= 0) {
                let itemB = arrayB[idx]
                let itemA = arrayA[index]
                
                if (itemB < itemA) {
                    arrayA[index+1] = arrayA[index]
                    arrayA[index] = itemB
                }
                else {
                    arrayA[index+1] = itemB
                    break // breakout while loop
                }
                
                index -= 1
            }
            
            total += 1
            index = total - 1
        }
        
        first = arrayA
        
        return total
    }
    
}
