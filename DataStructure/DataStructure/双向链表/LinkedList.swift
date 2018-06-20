//
//  LinkedList.swift
//  DataStructure
//
//  Created by hanqing.mao on 2018/6/20.
//  Copyright © 2018年 hanqing.mao. All rights reserved.
//

import Foundation
public class LinkedList<T>{
    public typealias Node = LinkedListNode<T>
    
    // if empty
    public var isEmpty:Bool{
        return head == nil
    }
    public var count:Int{
        guard var node = head else{
            return 0
        }
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    private var head:Node?
    
    public var first:Node?{
        return head
    }
    public var last:Node?{
        guard var node = head else{
            return nil
        }
        while let next = node.next {
            node = next
        }
        return node
    }
    
    public func node(atIndex index:Int)->Node?{
        if index == 0{
            return head
        }
        var node = head?.next
        
        guard index < count else{
            return nil
        }
        for _ in 1..<index{
            node = node?.next
            if node == nil{
                break
            }
        }
        return node
    }
    //inset node to last index
    public func appenToTail(value:T){
        
        let newNode = Node(value:value)
        
        guard let lastNode = last else{
            head = newNode
            return
        }
        newNode.previous = lastNode
        lastNode.next = newNode
    }
    
    public func insertToHead(value:T){
        let newHead = Node(value:value)
        guard  head != nil else{
            head = newHead
            return
        }
        newHead.next = head
        head?.previous = newHead
        head = newHead
    }
    
    public func insert(_ node:Node,atIndex index:Int){
        if index < 0{
            print("invalid input index")
            return
        }
        let newNode = node
        
        if count == 0 {
            head = newNode
            return
        }
        
        if  index == 0 {
            newNode.next = head
            head?.previous = newNode
            head = newNode
            return
        }
        
        if index > count{
            print("out of range")
            return
        }
        //
        let pre = self.node(atIndex: index - 1)
        let next = pre?.next
        
        newNode.previous = pre
        newNode.next = next
        next?.previous = newNode
        pre?.next = newNode
        
    }
    //https://juejin.im/post/5a7096fa6fb9a01cb64f163b#heading-35
    
}
