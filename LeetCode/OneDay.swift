//
//  OneDay.swift
//  LeetCode
//
//  Created by 张小龙 on 2019/2/14.
//  Copyright © 2019 张小龙. All rights reserved.
//

import UIKit
public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
  }


class OneDay: NSObject {
    /*
     1.给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
     你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
     */
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var index = 0
        while index < nums.count {
            let num = target - nums[index]
            let numIndex:Int = nums.firstIndex(of: num) ?? -1
            if numIndex >= 0 && numIndex != index {
               return [index,numIndex]
            }
            index += 1
        }
        return []
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result = ListNode(0)
        var tempResult = result;
        var templ1 = l1
        var templ2 = l2
        var addOne:Bool = false
        while templ1 != nil || templ2 != nil {
            if (templ1 != nil) {
                tempResult.val += (templ1?.val)!
                templ1 = templ1?.next
            }
            
            if (templ2 != nil) {
                tempResult.val += (templ2?.val)!
                templ2 = templ2?.next
            }
            
            if addOne {
                tempResult.val += 1
            }
            
            if tempResult.val >= 10 {
                tempResult.val = tempResult.val%10
                addOne = true
            }else{
                addOne = false
            }
            
            if templ1 != nil || templ2 != nil{
                tempResult.next = ListNode(0);
                tempResult = tempResult.next!;
            }else{
                if addOne{
                    tempResult.next = ListNode(1);
                }
            }
        }
        return result;
    }
    
}
