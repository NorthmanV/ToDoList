//
//  ToDo.swift
//  ToDoList
//
//  Created by Руслан Акберов on 15.04.2018.
//  Copyright © 2018 Ruslan Akberov. All rights reserved.
//

import Foundation

struct ToDo: Codable {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static func laodToDos() -> [ToDo]? {
        guard let codedToDos = try? Data(contentsOf: ArchiveURL) else {return nil}
        let propertyListDecoder = PropertyListDecoder()
        return try? propertyListDecoder.decode([ToDo].self, from: codedToDos)
    }
    
    static func loadSampleToDos() -> [ToDo] {
        let toDo1 = ToDo(title: "Test to do one", isComplete: false, dueDate: Date(), notes: "Note 1")
        let toDo2 = ToDo(title: "Test to do two", isComplete: false, dueDate: Date(), notes: "Note 2")
        let toDo3 = ToDo(title: "Test to do three", isComplete: false, dueDate: Date(), notes: "Note 3")
        return [toDo1, toDo2, toDo3]
    }
    
    static let dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm"
        return formatter
    }()
    
    static let DocumentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("todos").appendingPathExtension("plist")
    
    static func saveToDoS(_ todos: [ToDo]) {
        let propertyListEncoder = PropertyListEncoder()
        let codedToDoS = try? propertyListEncoder.encode(todos)
        try? codedToDoS?.write(to: ArchiveURL, options: .noFileProtection)
    }
    
}













