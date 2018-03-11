import UIKit
import Foundation

// Challenge 10: Vowels and Consonants
// Write a function that returns a tuple containing the number of vowels and consonants.

func splitVowelsAndConsonants(_ string: String) -> (Int, Int) {
    var vowelCount = 0
    var consCount = 0
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    string.forEach {
        if vowels.contains($0) { vowelCount += 1}
        if consonants.contains($0) { consCount += 1}
    }
    
    return (vowelCount, consCount)
}

splitVowelsAndConsonants("abcdefghijklmnopqrstuvwxyz") == (5, 21)
splitVowelsAndConsonants("aeiou") == (5, 0)

