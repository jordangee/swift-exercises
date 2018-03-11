import UIKit
import Foundation

// Remove duplicate letters from a string.
// Write a function that accepts a string as its input and
// return a string with the duplicate letters removed.

func removeDuplicateLetters(inString string: String) -> String {
    var newStr = String()
    string.forEach {
        if !newStr.contains($0) {
            newStr.append($0)
        }
    }
    
    return newStr
}

removeDuplicateLetters(inString: "aaabbbbbb") == "ab"
removeDuplicateLetters(inString: "abc") == "abc"
