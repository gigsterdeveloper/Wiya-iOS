//
//  SeperatorLineCell.swift
//  Wiya
//
//  Created by Arpan Chaudhury on 8/30/15.
//  Copyright (c) 2015 Arpan Chaudhury. All rights reserved.
//

import Foundation
import UIKit

class SeparatorLineCell: AbstractCell {
    
    var separatorLine: UIView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupWithView(cellView())
    }
    
    func cellView() -> UIView! {
        separatorLine = UIView()
        separatorLine.backgroundColor = .whiteColor()
        return separatorLine
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureLine(lineSize: CGSize) {
        separatorLine.autoSetDimensionsToSize(lineSize)
    }
}