//
//  SecondViewController.swift
//  To-Do-List
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loadi ng the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAddTask_Click(sender : UIButton){
        taskMgr.addTasks(txtTask.text, desc: txtDesc.text);
        self.view.endEditing(true)
        txtTask.text = " "
        txtDesc.text = " "
        self.tabBarController!.selectedIndex = 0;
        
        
    }
    //touch functions
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder();
        return true
        
    }
}

