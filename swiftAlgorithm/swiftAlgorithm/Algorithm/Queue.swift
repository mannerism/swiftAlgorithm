//
//  Queue.swift
//  swiftAlgorithm
//
//  Created by Yu Juno on 2020/08/16.
//  Copyright © 2020 hitit. All rights reserved.
//

import Foundation

struct Queue<T> {
	fileprivate var array = [T]()
	
	public var isEmpty: Bool {
		return array.isEmpty
	}
	
	public var count:Int {
		return array.count
	}
	
	public mutating func enqueue(_ element: T) {
		array.append(element)
	}
	
	public mutating func dequeue() -> T? {
		if isEmpty {
			return nil
		} else {
			return array.removeFirst()
		}
	}
	
	public var front: T? {
		return array.first
	}
}
