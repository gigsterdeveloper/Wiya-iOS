//
//  ButtonCell.swift
//  Doughbies
//
//  Created by Arpan Chaudhury on 8/27/15.
//  Copyright (c) 2015 Arpan Chaudhury. All rights reserved.
//

import Foundation
import UIKit

class ButtonCell: AbstractCell {
    
    var buttonView: UIButton!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupWithView(cellView())
    }
    
    func cellView() -> UIView! {
        buttonView = UIButton()
        buttonView.imageView?.contentMode = .ScaleAspectFit
        return buttonView
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
}