//
//  Helper.swift
//  AreaCodeChecker
//
//  Created by Tayler Moosa on 2/22/20.
//  Copyright © 2020 Tayler Moosa. All rights reserved.
//

import Foundation


func binarySearch(array: [[String]], key: Int, range: Range<Int>) -> [String]? {
    if range.lowerBound >= range.upperBound {
        return nil
    } else {
        // Calculate where to split the array.
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2

        // Is the search key in the left half?
        if Int(array[midIndex][0])! > key {
            return binarySearch(array: array, key: key, range: range.lowerBound ..< midIndex)

        // Is the search key in the right half?
        } else if Int(array[midIndex][0])! < key {
            return binarySearch(array: array, key: key, range: midIndex + 1 ..< range.upperBound)

        // If we get here, then we've found the search key!
        } else {
            return array[midIndex]
        }
    }
}

func getTime() -> String {
    let date = NSDate().description
    return date
    
}
