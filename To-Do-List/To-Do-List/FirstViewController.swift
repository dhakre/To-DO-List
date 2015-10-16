//
//  FirstViewController.swift
//  To-Do-List
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource ,UISearchBarDelegate{
    
    
    @IBOutlet var tblTasks: UITableView!
    @IBOutlet weak var searchBar : UISearchBar!        //for search bar
    var searchActive : Bool = false
    var filtered = task.self
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tblTasks.delegate=self
        tblTasks.dataSource=self
        searchBar.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tblTasks.reloadData();
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskMgr.tasks.count
    }
    
    
     func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTasks.reloadData();
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell : UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        return cell
    }
    
    
    // I tried these functions for search bar
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        searchActive=true
    }
    
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        searchActive=false
    }
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchActive=false
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchActive=false
    }
}
    
    /*func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        
      /* 


filtered = tasks.filter({ (text) -> Bool in   // What should I included here to filter the user given input in the table
            let tmp: NSString = task
            let range = tmp.rangeOfString(searchText, options: NSStringCompareOptions.CaseInsensitiveSearch)
            return range.location != NSNotFound
        },
            
        if(filtered.count== 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
        tblTasks.reloadData()
    }

    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
    Dispose of any resources that can be recreated
}*/
*/
