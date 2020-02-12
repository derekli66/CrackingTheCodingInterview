import Foundation

class Solution1 {
    static func isUnique(_ str: String) -> Bool {
        var hashMap = [String.Element: Int]()
        let stringArray = Array(str)
        for character in stringArray {
            if nil != hashMap[character] {
                return false
            }

            hashMap[character] = 1
        }

        return true
    }
}

class Solution2 {
    static func isUnique(_ str: String) -> Bool {
        let stringArray = Array(str)
        let length = stringArray.count

        for i in 0..<length {
            let pivot = stringArray[i]
            for j in 0..<length {
                // Should not compare the same position in the array.
                if i == j { continue } 

                let checker = stringArray[j]
                if checker == pivot {
                    return false
                }
            }
        }

        return true
    }
}

class Solution3 {
    static func isUnique(_ str: String) -> Bool {
        // Base character
        let charA = Character("a")
        let characters = Array(str)

        var counter: Int = 0
        for str in characters {
            let character = str
            let value = character.asciiValue! - charA.asciiValue!
            if counter & (1 << value) > 0 {
                return false
            }
            counter = counter | (1 << value)
        } 

        return true
    }
}
