//
//  DANavigationBar.swift
//  Doughbies
//
//  Created by Arpan Chaudhury on 8/23/15.
//  Copyright (c) 2015 Arpan Chaudhury. All rights reserved.
//

import Foundation
import UIKit

//enum NavBarMode {
//    case Root
//    case Push
//}

class WANavigationBar: UINavigationBar {

//    var menuButton: UIButton!
//    var backButton: UIButton!

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        barStyle = .Black
        barTintColor = UIColor.wiyaDarkSkyBlue()
        
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.whiteColor()]
    }
}