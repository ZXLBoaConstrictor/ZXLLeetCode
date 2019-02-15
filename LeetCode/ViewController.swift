//
//  ViewController.swift
//  LeetCode
//
//  Created by 张小龙 on 2019/2/14.
//  Copyright © 2019 张小龙. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let oneDay :OneDay = OneDay()
        let indexs:[Int] = oneDay.twoSum([3,2,4], 6);
        if indexs.count > 0 {
            print("找到结果")
        }
        
        let list = ListNode(1);
        list.next = ListNode(8);
        let list1 = ListNode(0);
        
        let list2 = oneDay.addTwoNumbers(list, list1);
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

