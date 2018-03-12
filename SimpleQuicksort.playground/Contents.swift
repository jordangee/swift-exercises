import Foundation

// Implement a simple quicksort for array of ints

func quicksort(_ arr: [Int]) -> [Int] {
    if arr.count < 2 { return arr }
    var sortedArr = arr
    var pivotIndex = arr.count - 1
    var pointerIndex = 0
    
    while sortedArr[pointerIndex] != sortedArr[pivotIndex]{
        if sortedArr[pointerIndex] < sortedArr[pivotIndex] {
            pointerIndex += 1
        } else {
            sortedArr.swapAt(pointerIndex, pivotIndex - 1)
            sortedArr.swapAt(pivotIndex, pivotIndex - 1)
            pivotIndex -= 1
        }
    }

    let lhs = Array(sortedArr[0..<pivotIndex])
    let rhs = Array(sortedArr[pivotIndex+1..<sortedArr.count])

    var finalArr = quicksort(lhs)
    finalArr.append(sortedArr[pivotIndex])
    finalArr.append(contentsOf: quicksort(rhs))
    return finalArr
}

quicksort([2, 1]) == [1, 2]
quicksort([2, 1, 5, 4, 6, 3]) == [1, 2, 3, 4, 5, 6]
quicksort([2, 1, 5, 4, 3, 6]) == [1, 2, 3, 4, 5, 6]
quicksort([2, 1, 5, 3, 6, 4]) == [1, 2, 3, 4, 5, 6]

