//
//  Stack.swift
//  DataStructure
//
//  Created by hanqing.mao on 2018/6/25.
//  Copyright © 2018年 hanqing.mao. All rights reserved.
//

import Foundation
public struct Stack<T>{
    fileprivate var stackArray = [T]()
    
    public var count :Int{
       return stackArray.count
    }
    
    public var isEmpty:Bool{
       return stackArray.isEmpty
    }
    
    public var top:T?{
        return stackArray.last
    }
    public mutating func push (_ element : T){
        stackArray.append(element)
    }
    public mutating func pop () -> T?{
        guard !isEmpty else {
            print("stack is empty")
            return nil
        }
        return stackArray.removeLast()
    }
    public mutating func printAllEliments(){
        guard count > 0 else{
            print("stack is empty")
            return
        }
        
        print("\n print all stack elemets:")
        for (index,value) in stackArray.enumerated() {
            print("[\(index)]\(value)")
        }
    }
    
    
    
}
