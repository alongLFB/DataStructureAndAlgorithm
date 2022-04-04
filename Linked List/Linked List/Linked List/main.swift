//
//  main.swift
//  Linked List
//
//  Created by lialong on 04/04/2022.
//

import Foundation

print("Hello, World!")

/*
 160. Intersection of Two Linked Lists
 https://leetcode.com/problems/intersection-of-two-linked-lists/description/
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil {
            return nil
        }
        var headL1: ListNode? = headA
        var headL2: ListNode? = headB
        while (headL1 !== headL2) {
            headL1 = (headL1 == nil) ? headB : headL1?.next
            headL2 = (headL2 == nil) ? headA : headL2?.next
        }
        return headL1
    }
}
