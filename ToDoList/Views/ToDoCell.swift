//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Руслан Акберов on 22.04.2018.
//  Copyright © 2018 Ruslan Akberov. All rights reserved.
//

import UIKit

protocol ToDoCellDelegate {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {

    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    var delegate: ToDoCellDelegate!
    
    @IBAction func isCompleteButtonTapped(_ sender: UIButton) {
        delegate.checkmarkTapped(sender: self)
    }
    
    
}

