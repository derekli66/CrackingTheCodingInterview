// Solution for The Egg Drop Problem
// First try - using recursive to solve eggs drop problem
func eggDropsOptimal(_ eggs: Int, _ floor: Int) -> Int {
    
    if (floor <= 1) {
        return floor
    }
    
    if (eggs == 1) {
        return floor
    }
    
    var minSteps = Int.max
    // Find minimum steps in all of the worst case.
    for x in 1...floor {
        let steps = max(eggDropsOptimal(eggs - 1, x - 1), eggDropsOptimal(eggs, floor - x))
        
        if (steps < minSteps) {
            minSteps = steps
        }
    }
    
    return minSteps + 1
}

// Second try - use dynamic programming to solve sub-problems and result in final answer.
func eggDrops(_ eggs: Int, _ floors: Int) -> Int {
    var cache = Array(repeating: Array(repeating: -1, count: floors + 1), count: eggs + 1)
    return eggDropsOptimal(eggs, floors, &cache)
}

private func eggDropsOptimal(_ eggs: Int, _ floor: Int, _ cache: inout [[Int]]) -> Int {
    
    if cache[eggs][floor] != -1 {
        print("[Debug] Use cached value: \(cache[eggs][floor])")
        return cache[eggs][floor]
    }
    
    if (floor <= 1) {
        return floor
    }
    
    
    if (eggs == 1) {
        return floor
    }
    
    var minSteps = Int.max
    // Find minimum steps in all of the worst case.
    for x in 1...floor {
        let steps = max(eggDropsOptimal(eggs - 1, x - 1, &cache), eggDropsOptimal(eggs, floor - x, &cache))
        
        if (steps < minSteps) {
            minSteps = steps
        }
    }
    
    cache[eggs][floor] = minSteps + 1
    
    return cache[eggs][floor]
}
