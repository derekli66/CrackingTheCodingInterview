/*
 Triple Step:
 A child is running up a staircase with n steps and can hop either 1 step, 2 steps or 3 steps
 at a time. Implement a method to count how many possible ways the child can run up the stairs.
*/

class Solution {
    static func tripleStep(_ steps: Int) -> Int {
        if steps < 0 { return 0 }
        if steps == 0 { return 1 }
        
        var results = [Int: Int]()
        results[1] = 1
        results[2] = 2
        results[3] = 4
        
        var i = 4
        while (i <= steps) {
            results[i] = results[i - 1]! + results[i - 2]! + results[i - 3]!
            i += 1
        }
        
        return results[steps]!
    }
    
    static func badTripleStep(_ steps: Int) -> Int {
        if steps < 0 {
            return 0
        }
        else if steps == 0 {
            return 1
        }
        else {
            return badTripleStep(steps - 1) + badTripleStep(steps - 2) + badTripleStep(steps - 3)
        }
    }
}
