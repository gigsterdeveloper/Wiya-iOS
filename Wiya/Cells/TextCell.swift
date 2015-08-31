//
//  File.swift
//  Doughbies
//
//  Created by Arpan Chaudhury on 8/26/15.
//  Copyright (c) 2015 Arpan Chaudhury. All rights reserved.
//

import Foundation
import UIKit

class TextCell: AbstractCell {
    
    var parentView: UIView!
    var label: UILabel!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupWithView(cellView())
    }
    
    func cellView() -> UIView! {
        label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()

        return label
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