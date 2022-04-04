//
//  main.swift
//  Reverse Linked List
//
//  Created by lialong on 04/04/2022.
//

import Foundation

print("Hello, World!")

/*
 206. Reverse Linked List
 https://leetcode.com/problems/reverse-linked-list/
 */

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
//        if head == nil || head?.next == nil {
//            return nil
//        }
//        let next: ListNode? = head?.next
//        let newHead: ListNode? = reverseList(next)
//        next?.next = head
//        head?.next = nil
//        return newHead
        
        var head = head
        let newHead = ListNode.init(-1)
        while (head != nil) {
            let next = head?.next
            head?.next = newHead.next
            newHead.next = head
            head = next
        }
        return newHead.next
    }
}
