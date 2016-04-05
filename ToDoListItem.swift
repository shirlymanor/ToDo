//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Shirly Manor on 1/24/16.
//  Copyright © 2016 shirly. All rights reserved.
//

import Foundation

//ToDo list items
class ToDoListItem {
    
    var text = ""
    var description = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}