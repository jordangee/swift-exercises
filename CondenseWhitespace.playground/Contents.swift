import UIKit
import Foundation

// Condensed white space
// Write a function that returns a string with any consecutive spaces
// replaced with a single space.

func condenseWhitespace(forString string: String) -> String {
    var charArr = [Character]()
    string.forEach { charArr.append($0) }
    
    var i = 0
    var length = charArr.count
    while i < length-1 {
        if charArr[i] == " " && charArr[i+1] == " " {
            charArr.remove(at: i)
            length -= 1
            continue
        }
        i += 1
    }
    return String(charArr)
}

condenseWhitespace(forString: "a   b  c") == "a b c"
condenseWhitespace(forString: "a bc   ") == "a bc "
