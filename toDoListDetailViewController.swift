//
//  toDoListDetailViewController.swift
//  ToDoList
//
//  Created by Shirly Manor on 1/24/16.
//  Copyright © 2016 shirly. All rights reserved.
//

import UIKit

class toDoListDetailViewController: UIViewController {

    
    @IBOutlet weak var itemText: UITextField!
    
    @IBOutlet weak var itemDescription: UITextField!
    
    var newToDoListItem = ToDoListItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func doneButtonPressed(sender: AnyObject) {
        
        newToDoListItem.text = itemText.text!
        newToDoListItem.description = itemDescription.text!
        print("Adding item \(itemText.text) with \(itemDescription.text) to items list")
        items.append(newToDoListItem)
        
        self.navigationController!.popToRootViewControllerAnimated(true)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
