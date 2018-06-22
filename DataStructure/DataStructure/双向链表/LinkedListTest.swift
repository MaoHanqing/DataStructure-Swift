//
//  LinkedListTest.swift
//  DataStructure
//
//  Created by hanqing.mao on 2018/6/22.
//  Copyright © 2018年 hanqing.mao. All rights reserved.
//

import Foundation
struct LinkedListTest {
    static func test(){
        let list = LinkedList<String>()
        printList(list: list)
        
        list.appenToTail(value: "swift")
        printList(list: list)
        
        list.appenToTail(value: "is")
        printList(list: list)
        
        list.appenToTail(value: "great")
        printList(list: list)
        
        list.printAllNodes()
        
        let a =  list.node(atIndex: 0)?.value
        let b =  list.node(atIndex: 1)?.value
        let c = list.node(atIndex: 3)?.value
        let d = list.node(atIndex: 4)?.value
        
        list.insert(LinkedListNode(value: "language"), atIndex: 1)
        list.printAllNodes()
        
        list.remove(node: list.first!)
        list.printAllNodes()
        
        list.removeAt(1)
        list.printAllNodes()
        
        list.removeLast()
        list.printAllNodes()
        
        list.insertToHead(value: "study")
        list.count
        list.printAllNodes()
        
        list.removeAll()
        list.printAllNodes()
        
        list.insert(LinkedListNode(value: "new"), atIndex: 3)
        list.printAllNodes()
        
        list.insert(LinkedListNode.init(value: "new"), atIndex: 3)
        list.printAllNodes()
        
        list.insert(LinkedListNode(value: "newer"), atIndex: 1)
        list.printAllNodes()
    }
    
    static func printList(list:LinkedList<String>){
        print("=================\n")
        
        print(list.isEmpty,list.first,list.count)
    }
}
