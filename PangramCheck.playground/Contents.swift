import UIKit
import Foundation

// Challenge 9: Is the string a pangram?
// Write a function that returns true if a given string is an English pangram.

func isPangram(_ string: String) -> Bool {
    var result = true
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    alphabet.forEach { if !string.contains($0) { result = false } }
    return result
}

isPangram("abcdefghijklmnopqrstuvwxyz") == true
isPangram("abc") == false
isPangram("abcdefghijklmnopqrstuvwxyy") == false

