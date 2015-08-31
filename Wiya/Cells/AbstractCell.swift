
//  File.swift
//  Doughbies
//
//  Created by Arpan Chaudhury on 8/26/15.
//  Copyright (c) 2015 Arpan Chaudhury. All rights reserved.
//

import Foundation
import UIKit

class AbstractCell: UITableViewCell {
    
    var viewToSet: UIView?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    func setupWithView(baseView: UIView!) {
        viewToSet = baseView
        addViews()
        setConstraints()
        selectionStyle = .None
    }
    
    func addViews() {
        addSubview(viewToSet!)
    }
    
    func setConstraints() {
        viewToSet!.autoPinEdge(.Bottom, toEdge: .Bottom, ofView: self)
    }
    
    func setInsets(top: CGFloat?, left: CGFloat?, right: CGFloat?) {
        if (top != nil) {
            viewToSet!.autoPinEdge(.Top, toEdge: .Top, ofView: self, withOffset: top!)
        }
        else {
            viewToSet!.autoPinEdge(.Top, toEdge: .Top, ofView: self)
        }
        
        if (left == nil && right == nil) {
            viewToSet!.autoAlignAxis(.Vertical, toSameAxisOfView: self)
        }
        else {
            if (left != nil) {
                viewToSet!.autoPinEdge(.Left, toEdge: .Left, ofView: self, withOffset: left!)
            }
            
            if (right != nil) {
                viewToSet!.autoPinEdge(.Right, toEdge: .Right, ofView: self, withOffset: right!)
            }
        }
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