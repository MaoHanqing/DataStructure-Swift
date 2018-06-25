//
//  ViewController.swift
//  DataStructure
//
//  Created by hanqing.mao on 2018/6/20.
//  Copyright © 2018年 hanqing.mao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LinkedListTest.test()
        
        StackTest.test()
        
        QueueTest.test()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

