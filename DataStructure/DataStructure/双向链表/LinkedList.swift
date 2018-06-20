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
    
    public func removeAll(){
        head = nil
    }
    public func removeLast()->T?{
        guard !isEmpty else{
            return nil
        }
        return remove(node: last!)
    }
    public func remove(node:Node)->T?{
        guard head != nil else{
            print("linked list is empty")
            return nil
        }
        let prev = node.previous
        let next = node.next
        if let prev = prev {
            prev.next = next
        }else{
            head = next
        }
        next?.previous = prev
        
        node.previous = nil
        node.next = nil
        return node.value
        
    }
    
    public func removeAt(_ index:Int)->T?{
        guard head != nil else{
            print("linked list is empty")
            return nil
        }
        let node = self.node(atIndex: index)
        guard  node != nil else {
            print("atIndex not fund Node")
            return nil
        }
        return remove(node: node!)
    }
    
    public func printAllNodes(){
        guard head != nil else{
            print("linked list is empty")
            return
        }
        var node = head
        print("\nstart printng all nodes:")
        for index in 0..<count {
            if node == nil{
                break
            }
            print("[\(index)]\(node!.value)")
            node = node?.next
        }
    }
}
