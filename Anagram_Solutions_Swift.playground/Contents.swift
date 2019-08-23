import UIKit

//var str = "Hello, playground"
//Anagrams
// Example : night/thing

func anagramCheck(a: String, b: String) -> Bool {
    var (v1, v2) = (Array(a), Array(b))
    v1.sort()
    v2.sort()
    return String(v1) == String(v2)
}
print(anagramCheck(a: "night", b: "thing"))
func countedSet(str: String)-> NSCountedSet {
    let arra = str.map { (char) -> String in
        return String(char)
    }
    return NSCountedSet(array: arra)
}
func isAnagrame(a: String, b: String) -> Bool {
    return countedSet(str: a).isEqual(countedSet(str: b))
}
print(isAnagrame(a: "night", b: "thing"))

func isAnagrameUsingXOR(s1: String, s2: String)-> Bool {
    if s1.count != s2.count {
        return false
    }
    var value: UInt8 = 0
    for (c1, c2) in zip(s1, s2){
        print("Before", value, c1.asciiValue ?? 0)
        value = value ^ (c1.asciiValue ?? 0)
        print("After", value, c1.asciiValue ?? 0)
        value = value ^ (c2.asciiValue ?? 0)
    }
    return value == 0
}
print("Anagrame using \(isAnagrameUsingXOR(s1: "night", s2: "thing"))")
//Time Complexity: O(n)
//Space Complexity: O(1)
