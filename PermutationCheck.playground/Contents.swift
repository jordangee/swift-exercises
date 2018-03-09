import Foundation

// Do two strings contain the same characters?
// Write a function that accepts two String parameters, and returns
// true if they contain the same characters in any order.

func checkIfPermutation(_ string1: String, _ string2: String) -> Bool {
    if string1.count != string2.count { return false }
    return string1.sorted() == string2.sorted()
}

checkIfPermutation("abc", "abc") == true
checkIfPermutation("abc", "bca") == true
checkIfPermutation("abc", "abd") == false
checkIfPermutation("abc", "abcd") == false
