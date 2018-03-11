import UIKit
import Foundation

// Challenge 11: Three Different Letters
// Write a function that accepts two strings, and returns true if they are
// identical in length but have no more than three different letters.

func identicalExceptThree(_ string1: String, _ string2: String) -> Bool {
    var differenceCount = 0
    if string1.count != string2.count { return false }
    let arr1 = Array(string1)
    let arr2 = Array(string2)
    
    for i in 0..<arr1.count {
        if arr1[i] != arr2[i] { differenceCount += 1 }
    }
    
    return differenceCount < 4
}

identicalExceptThree("abcabcabc", "abcabcdef") == true
identicalExceptThree("abcabcabc", "abcabzzzz") == false
identicalExceptThree("abcd", "abc") == false
