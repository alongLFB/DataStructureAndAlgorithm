//
//  main.swift
//  Merge Two Sorted Lists
//
//  Created by lialong on 13/02/2023.
//

import Foundation


// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil { return nil}
        if list2 == nil { return list1 }
        if list1 == nil { return list2 }
        
        if list1!.val < list2!.val {
            list1!.next = mergeTwoLists(list1!.next, list2)
            return list1
        } else {
            list2?.next = mergeTwoLists(list2?.next, list1)
            return list2
        }
        
    }
}

