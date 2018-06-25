//
//  QueueTest.swift
//  DataStructure
//
//  Created by hanqing.mao on 2018/6/25.
//  Copyright © 2018年 hanqing.mao. All rights reserved.
//

import Foundation
struct QueueTest {
    
    
    static func test()  {
        var queue = Queue<Any>()
        queue.printAllElements()
        queue.isEmpty
        queue.conunt
        
        queue.enqueue(2)
        queue.printAllElements()
        queue.isEmpty
        
        queue.enqueue(3)
        queue.printAllElements()
        
        queue.enqueue(4)
        queue.printAllElements()
        queue.front
        
        queue.dequeue()
        queue.printAllElements()
        queue.front
        
        queue.dequeue()
        queue.printAllElements()
        queue.front
        queue.isEmpty
        queue.conunt
        
    }
    
}
