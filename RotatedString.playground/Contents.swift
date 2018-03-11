import UIKit
import Foundation

// Challenge 8: String is rotated
// Write a function that accepts two strings, and returns true if
// one string is a rotation of the other.

func isRotation(_ string1: String, _ string2: String) -> Bool {
    if string1.count != string2.count { return false }
    var arr1 = [Character]()
    string1.forEach { arr1.append($0) }
    var arr2 = [Character]()
    string2.forEach { arr2.append($0) }
    
    func checkPotentialMatch(index: Int) -> String {
        var start = String()
        var end = String()
        
        for i in index..<arr2.count {
            start.append(arr2[i])
        }
        for i in 0..<index {
            end.append(arr2[i])
        }
        return start + end
    }
    
    for i in 0..<arr2.count {
        if arr2[i] == string1.first! {
            let potentialMatch = checkPotentialMatch(index: i)
            if potentialMatch == string1 { return true }
        }
    }
    
    return false
}


isRotation("test", "stte") == true
isRotation("string", "trings") == true
isRotation("hello", "hellp") == false

