//
//  ToDo.swift
//  ToDoList
//
//  Created by Руслан Акберов on 15.04.2018.
//  Copyright © 2018 Ruslan Akberov. All rights reserved.
//

import Foundation

struct ToDo {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static func laodToDos() -> [ToDo]? {
        return nil
    }
    
    static func loadSampleToDos() -> [ToDo] {
        let toDo1 = ToDo(title: "Test to do one", isComplete: false, dueDate: Date(), notes: "Note 1")
        let toDo2 = ToDo(title: "Test to do two", isComplete: false, dueDate: Date(), notes: "Note 2")
        let toDo3 = ToDo(title: "Test to do three", isComplete: false, dueDate: Date(), notes: "Note 3")
        return [toDo1, toDo2, toDo3]
    }
    
}
