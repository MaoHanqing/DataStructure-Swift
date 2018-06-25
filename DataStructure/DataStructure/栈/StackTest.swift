//
//  StackTest.swift
//  DataStructure
//
//  Created by hanqing.mao on 2018/6/25.
//  Copyright © 2018年 hanqing.mao. All rights reserved.
//

import Foundation
struct StackTest {
   static func test()  {
        var stack = Stack<Any>()
        stack.printAllEliments()
        stack.isEmpty
        
        stack.push(2)
        stack.printAllEliments()
        
        stack.push(3)
        stack.printAllEliments()
        
        stack.isEmpty
        stack.top
        
        stack.pop()
        stack.printAllEliments()
        
        stack.isEmpty
        stack.top
        
        stack.pop()
        stack.printAllEliments()
        stack.top
        stack.isEmpty
        
        stack.pop()
        
        
    }
}
