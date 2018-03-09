import UIKit
import Foundation

// Is a string a palindrome?
// Write a function that accepts a String as its only parameter, and returns
// true if the string reads the same when reversed, ignoring case.

func checkForPalindrome(string: String) -> Bool {
    let reversed = String(string.reversed())
    return string == reversed
}

checkForPalindrome(string: "racecars") == false
checkForPalindrome(string: "racecar") == true
checkForPalindrome(string: "racecat") == false
