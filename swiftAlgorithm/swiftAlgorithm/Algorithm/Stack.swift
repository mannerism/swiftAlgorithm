//
//  Stack.swift
//  swiftAlgorithm
//
//  Created by Yu Juno on 2020/08/12.
//  Copyright © 2020 hitit. All rights reserved.
//

import Foundation

public struct Stack<T> {
	fileprivate var array = [T]()
	
	public var isEmpty: Bool {
		return array.isEmpty
	}
	
	public var count: Int {
		return array.count
	}
	
	public mutating func push(_ element: T) {
		array.append(element)
	}
	
	public mutating func pop() -> T? {
		return array.popLast()
	}
	
	public var top: T? {
		return array.last
	}
}

//Notice that a push puts the new element at the end of the array, not the beginning.

//Inserting at the beginning of an array is expensive, an O(n) operation, because it requires all existing array elements to be shifted in memory.

//Adding at the end is O(1); it always takes the same amount of time, regardless of the size of the array.

//Fun fact about stacks: Each time you call a function or a method, the CPU places the return address on a stack. When the function ends, the CPU uses that return address to jump back to the caller. That's why if you call too many functions -- for example in a recursive function that never ends -- you get a so-called "stack overflow" as the CPU stack has run out of space.



