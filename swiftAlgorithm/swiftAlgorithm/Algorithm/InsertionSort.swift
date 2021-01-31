//
//  InsertionSort.swift
//  swiftAlgorithm
//
//  Created by Yu Juno on 2021/01/26.
//  Copyright © 2021 hitit. All rights reserved.
//

import Foundation

class InsertionSort {
	/// swap insertion sort
	func swapInsertionSort(
		_ array: [Int] /// input: unsorted array of integers
	) -> [Int] { 		 /// output: sorted array of integers
		var a = array
		for x in 1..<a.count {
			var y = x
			while y > 0 && a[y] < a[y - 1] {
				a.swapAt(y - 1, y)
				y -= 1
			}
		}
		return a
	}
	
	/// shift insertion sort
	func shiftInsertionSort(
		_ array: [Int]
	) -> [Int] {
		var a = array
		for x in 1..<a.count { /// 1, 2, 3
			var y = x
			let temp = a[y] /// y = 0
			while y > 0 && temp < a[y - 1] {
				a[y] = a[y - 1]
				y -= 1
			}
			a[y] = temp
		}
		return a
	}
}

/// [4,3,2,1]
/// [4,3|2,1]
/// temp = 3
/// [4,4|2,1]
/// [3,4|2,1]

/// [3,4,2|1]
/// temp = 2
/// [3,4,4|1]
/// [3,3,4|1]
/// [2,3,4|1]

/// [2,3,4,1|]
/// temp = 1
/// [2,3,4,4]
/// [2,3,3,4]
/// [2,2,3,4]
/// [1,2,3,4]



