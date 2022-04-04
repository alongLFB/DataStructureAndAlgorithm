//
//  ListNode.swift
//  Linked List
//
//  Created by lialong on 04/04/2022.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
