//
//  LinkedList.swift
//  LinkedListExercises
//
//  Created by C4Q  on 10/24/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

public class Node<T> {
    var key: T
    var next: Node?
    init(key: T) {
        self.key = key
    }
}

public class LinkedList<T: Equatable> {
    var head: Node<T>?
    func printAllKeys() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode!.key)
            currentNode = currentNode?.next
        }
    }

    var count: Int {
        var node = head
        var num = 0
        while node != nil {
            num += 1
            node = node!.next
        }
        return num
    }
    
    func append(element newKey: T) {
        var node = head
        while node != nil {
            if node?.next == nil {
                node?.next = Node(key: newKey)
                return
                
            }
            node = node?.next
        }
    }
    
    func getNode(at index: Int) -> Node<T>? {
        var currentIndex = 0
        let node = head
        while node != nil {
            if currentIndex == index {
                return node
            }
            currentIndex += 1
        }
        return nil
        
    }
    
    func contains(element targetKey: T) -> Bool {
        var node = head
        while node != nil {
            if node?.key == targetKey {
                return true
            }
            node = node?.next
        }
        return false
        
    }
    
    func equals(otherList: LinkedList<T>) -> Bool {
        var node = head
        while node != nil {
            guard let nodeKey = node?.key else {
                continue
            }
            if !otherList.contains(element: nodeKey) {
                return false
            }
            node = node?.next
        }
        return true
        
    }
    
    func toArr() -> [T] {
        var newArr = [T]()
        var node = head
        while node != nil {

            newArr.append((node?.key)!)
            node = node?.next
        }
        return newArr
        
    }
    
    func reversed() -> LinkedList<T> {
        var newList = LinkedList()
        
        let reversedArr = Array(newList.toArr().reversed())
        for i in reversedArr {
            newList.append(element: i)
            return newList
        }
        return newList
        
        
    }
    
    func removeAll() {
        var node = head
        while node != nil {
            node = nil
        }
        node?.next = node
    }
    
    //Challenge Questions
    func removeDuplicatesFromSortedList() {}
    
    static func mergeSortedLists<T>(listOne: LinkedList<T>, listTwo: LinkedList<T>) -> LinkedList<T> {
        return LinkedList<T>()
    }
    
    


}

