//
//  ViewController.swift
//  ToDoOrNotToDo
//
//  Created by kristof anderson on 1/3/17.
//  Copyright © 2017 JumpMaster Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
       
        
        
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            
            cell.textLabel?.text = " !! \(task.name)"
        }
        
        else {
            cell.textLabel?.text = task.name
        }
        
        return cell
    
    }
// Making an function that is an array that adds type "Task"
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = " WTD"
        task1.important = false
        
        let task2 = Task()
        task2.name = " mow lawn"
        task2.important = true
        
        return [task1, task2]
    }
}

