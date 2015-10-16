//
//  TaskManager.swift
//  To-Do-List
//

import UIKit

var taskMgr : TaskManager = TaskManager()

struct task {
    var name = "Un-named"
    var desc = "Un-describted"
}
class TaskManager: NSObject {
     var tasks = [task]()
    
    func addTasks(name : String ,desc : String){
        tasks.append(task(name: name, desc: desc))
        
    }
}
