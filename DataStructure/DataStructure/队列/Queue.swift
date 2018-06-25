//
//  Queue.swift
//  DataStructure
//
//  Created by hanqing.mao on 2018/6/25.
//  Copyright © 2018年 hanqing.mao. All rights reserved.
//

import Foundation
public struct Queue<T>{
    fileprivate var queueArray = [T]()
    
    public var conunt: Int {
        return queueArray.count
    }
    
    public var isEmpty : Bool{
        return queueArray.isEmpty
    }
    
    public var front:T?{
        guard !isEmpty else{
            print("queue is empty")
            return nil
        }
        
        return queueArray.first
    }
    
    public mutating func enqueue (_ element:T){
        queueArray.append(element)
    }
    public mutating func dequeue ()->T?{
        guard !isEmpty else{
            print("queue is empty")
            return nil
        }
        return queueArray.removeFirst()
    }
    
    public mutating func printAllElements(){
        guard !isEmpty else{
            print("queue is empty")
            return
        }
        print("\n print all queue elemets:")
        for (index ,value) in queueArray.enumerated(){
            print("[\(index)]\(value)")
        }
    }
    
    
}
