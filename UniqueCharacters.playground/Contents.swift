import UIKit
import Foundation

// Are the letters unique?
// Write a function that accepts a string as its only param and returns
// true if the string has only unique letters taking letter case into account.

func checkForUniqueLetters(inString string: String) -> Bool {
    var dict = [Character: Bool]()
    var unique = true
    
    string.forEach {
        if dict[$0] != nil {
            unique = false
        } else {
            dict[$0] = true
        }
    }
    return unique
}

checkForUniqueLetters(inString: "aaa") == false
checkForUniqueLetters(inString: "abc") == true
checkForUniqueLetters(inString: "Aa") == true
checkForUniqueLetters(inString: "AA") == false
