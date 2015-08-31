//
//  WelcomeViewController.swift
//  Wiya
//
//  Created by Arpan Chaudhury on 8/30/15.
//  Copyright (c) 2015 Arpan Chaudhury. All rights reserved.
//

import Foundation
import UIKit

class WelcomeViewController: WATableViewController {
    
    struct TableView {
        struct CellIdentifiers {
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        
        tableView.backgroundColor = UIColor.wiyaDarkSkyBlue()
    }
}

// MARK: Table View Data Source

extension WelcomeViewController: UITableViewDataSource {
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell!
        
        let logoSpacingFromTop:CGFloat = 136.0
        let lineSpacing:CGFloat = 35.0
        let lineWidth:CGFloat = 350.0
        let textSpacing:CGFloat = 48.0
        let buttonSpacing:CGFloat = 79.5
        
        switch indexPath.row {
        case 0:
            var imageCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifiers.ImageCell, forIndexPath: indexPath) as! ImageCell
            
            imageCell.setInsets(logoSpacingFromTop, left: nil, right: nil)
            imageCell.cellImageView.configureImage("wiyaWhiteVector", imageSize: ImageSize.WelcomeLogo, strokeColor: nil, strokeWidth: nil)
            
            cell = imageCell
        case 1:
            var separatorLineCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifiers.SeparatorLineCell, forIndexPath: indexPath) as! SeparatorLineCell
            
            separatorLineCell.setInsets(lineSpacing, left: nil, right: nil)
            separatorLineCell.configureLine(CGSize(width: lineWidth, height: 1.0))
            
            cell = separatorLineCell
        case 2:
            var textCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifiers.TextCell, forIndexPath: indexPath) as! TextCell
            
            textCell.setInsets(textSpacing, left: 0.0, right: 0.0)
            textCell.label?.configureLabel("Wiya connects you with local businesses\n\n\nForget punchcards and discount apps\n\n\nThe points that you earn with us can be used\nat any of our partner businesses", attributedTextToSet: nil, fontToSet: UIFont.customFontMedium(), color: UIColor.whiteColor(), alignment: .Center)
            
            cell = textCell
        case 3:
            var buttonCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifiers.ButtonCell, forIndexPath: indexPath) as! ButtonCell
            
            buttonCell.setInsets(buttonSpacing, left: nil, right: nil)
            buttonCell.buttonView.configureTextButton("let's get started", buttonSize: ButtonSize.large, color: UIColor.whiteColor(), strokeColor: nil, strokeWidth: nil, font: UIFont.customFontMedium(), fontColor: UIColor.wiyaDarkSkyBlue(), cornerRadius: StyleConstants.cornerRadius)
            
            cell = buttonCell

        default:
            cell = UITableViewCell()
            println("out of cells")
        }
        
        cell.backgroundColor = .clearColor()
        
        return cell
    }
}

// Mark: Table View Delegate

extension WelcomeViewController: UITableViewDelegate {
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.cellForRowAtIndexPath(indexPath)?.setSelected(false, animated: false)
    }
}