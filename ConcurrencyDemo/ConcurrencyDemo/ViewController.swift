//
//  ViewController.swift
//  ConcurrencyDemo
//
//  Created by Zignuts Technolab on 29/05/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.queueTesting()
    }

    private func queueTesting() {
        // Thread Task
        // Serial+Sync - ORDER: Tasks executed serially in a synchronous manner, preserving the order.
        // Serial+Async - ORDER: Tasks executed serially, but asynchronously, still preserving the order.
        // Concurrent+Sync - ORDER: Concurrent execution with synchronous behavior, preserving the order.
        // Concurrent+Async - UNORDER: Concurrent execution with asynchronous behavior, order not guaranteed.
        
        let myQueue = DispatchQueue(label: "my.testing.queue", attributes: .concurrent)
        
        // Perform Task 1 on the custom queue synchronously
        myQueue.async {
            print("Task 1 started")
            
            for i in 1...5 {
                print("\(i) [TASK-1] times five is \(i * 5)")
            }
            
            print("Task 1 completed")
        }
        
        // Perform Task 2 on the custom queue synchronously
        myQueue.async {
            print("Task 2 started")
            
            for i in 1...3 {
                print("\(i) [TASK-2] times five is \(i * 5)")
            }
            
            print("Task 2 completed")
        }
    }

}

