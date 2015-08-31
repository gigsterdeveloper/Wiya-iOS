//
//  CustomViewCell.swift
//  Doughbies
//
//  Created by Arpan Chaudhury on 8/28/15.
//  Copyright (c) 2015 Arpan Chaudhury. All rights reserved.
//

import Foundation
import UIKit

class CustomViewCell: AbstractCell {
        
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
    
    func configureView(viewToSet: UIView) {
        setupWithView(viewToSet)
    }
}