//
//  WATableViewController.swift
//  Wiya
//
//  Created by Arpan Chaudhury on 8/30/15.
//  Copyright (c) 2015 Arpan Chaudhury. All rights reserved.
//

import Foundation
import UIKit

class WATableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.scrollEnabled = false
        tableView.estimatedRowHeight = 60.0
        tableView.separatorStyle = .None
        
        tableView.registerClass(TextCell.self, forCellReuseIdentifier: CellIdentifiers.TextCell)
        tableView.registerClass(ButtonCell.self, forCellReuseIdentifier: CellIdentifiers.ButtonCell)
        tableView.registerClass(CustomViewCell.self, forCellReuseIdentifier: CellIdentifiers.CustomViewCell)
        tableView.registerClass(TextFieldCell.self, forCellReuseIdentifier: CellIdentifiers.TextFieldCell)
        tableView.registerClass(ImageCell.self, forCellReuseIdentifier: CellIdentifiers.ImageCell)
        tableView.registerClass(SeparatorLineCell.self, forCellReuseIdentifier: CellIdentifiers.SeparatorLineCell)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
}

extension WATableViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        tableView.endEditing(true)
        return false
    }
}