import UIKit
import Foundation

// Is a string a palindrome?
// Write a function that accepts a String as its only parameter, and returns
// true if the string reads the same when reversed, ignoring case.

func checkForPalindrome(string: String) -> Bool {
    if string.count % 2 == 0 { return false }
    var charArr = [Character]()
    string.forEach { charArr.append($0) }
    for i in 0..<string.count/2 {
        let lastElement = charArr.count - 1
        if charArr[i] != charArr[lastElement - i] {
            return false
        }
    }
    return true
}

checkForPalindrome(string: "racecars") == false
checkForPalindrome(string: "racecar") == true
checkForPalindrome(string: "racecat") == false
