//
//  Node.swift
//  DataStructure
//
//  Created by hanqing.mao on 2018/6/20.
//  Copyright © 2018年 hanqing.mao. All rights reserved.
//

import Foundation
public class LinkedListNode<T>{
    //value of a node
    var value : T
    //pointer to previous node
    weak var previous:LinkedListNode?
    //pointer to next node
    var next : LinkedListNode?
    public init (value:T){
        self.value = value
    }
}
