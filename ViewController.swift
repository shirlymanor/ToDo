//
//  ViewController.swift
//  ToDoList
//
//  Created by Shirly Manor on 1/24/16.
//  Copyright © 2016 Shirly. All rights reserved.
//

import UIKit

var items =  [ToDoListItem]()


class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    
    @IBOutlet weak var toDoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDoTableView.delegate = self;
        toDoTableView.dataSource = self;
        
        //toDoTableView.backgroundColor = UIColor.blackColor()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        toDoTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = toDoTableView.dequeueReusableCellWithIdentifier("todoListCell", forIndexPath: indexPath)
        
        let todoListLabel = cell.viewWithTag(1000) as! UILabel
        let todoListDescLabel = cell.viewWithTag(2000) as! UILabel
        
        
        if(items.count>0) {
            todoListLabel.text = items[indexPath.row].text
            todoListDescLabel.text = items[indexPath.row].description
            
        }
        else {
            todoListLabel.text = ""
            todoListDescLabel.text = ""
        }
        
        cell.selectionStyle = .None
        return cell
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
        
    }
    
    func colorForIndex(index: Int) -> UIColor {
        let itemCount = items.count - 1
        let val = (CGFloat(index) / CGFloat(itemCount)) * 0.6
        return UIColor(red: 0.5, green: val, blue: 1.0, alpha: 0.5)
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell,
        forRowAtIndexPath indexPath: NSIndexPath) {
            cell.backgroundColor = colorForIndex(indexPath.row)
    }
    
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            // handle delete (by removing the data from your array and updating the tableview)
            print("index to be removed: \(indexPath.row)")
            
            if(indexPath.row<items.count) {
                items.removeAtIndex(indexPath.row)
            }
            
            toDoTableView.reloadData()
        }
    }



}

