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


