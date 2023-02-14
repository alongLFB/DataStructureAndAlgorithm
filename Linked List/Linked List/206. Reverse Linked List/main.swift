//
//  main.swift
//  206. Reverse Linked List
//
//  Created by lialong on 13/02/2023.
//

import Foundation

print("Hello, World!")


// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if (head == nil || head?.next == nil) {
            return head
        }
        let cur = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return cur
    }
}
