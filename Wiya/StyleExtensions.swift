//
//  StyleExtensions.swift
//  Wiya
//
//  Created by Arpan Chaudhury on 8/30/15.
//  Copyright (c) 2015 Arpan Chaudhury. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    class func wiyaWarmPink() -> UIColor { return UIColor(red: 255.0/255.0, green: 64.0/255.0, blue: 129.0/255.0, alpha: 1.0) }
    class func wiyaBlack() -> UIColor { return UIColor(red: 33.0/255.0, green: 33.0/255.0, blue: 33.0/255.0, alpha: 1.0) }
    class func wiyaDarkSkyBlue() -> UIColor { return UIColor(red: 44.0/255.0, green: 165.0/255.0, blue: 218.0/255.0, alpha: 1.0) }
}

extension UIFont {
    class func customFontXSmall() -> UIFont { return UIFont(name: "Helvetica Neue", size: 8)! }
    class func customFontSmall() -> UIFont { return UIFont(name: "Helvetica Neue", size: 12)! }
    class func customFontMedium() -> UIFont { return UIFont(name: "Helvetica Neue", size: 14)! }
    class func customFontLarge() -> UIFont { return UIFont(name: "Helvetica Neue", size: 20)! }
    class func customFontXLarge() -> UIFont { return UIFont(name: "Helvetica Neue", size: 30)! }
}

extension UIImageView {
    func configureImage(imageName: String, imageSize: CGSize?, strokeColor: UIColor?, strokeWidth: CGFloat?) {
        image = UIImage(named: imageName)
        
        imageSize != nil ? autoSetDimensionsToSize(imageSize!) : autoSetDimensionsToSize(Default.Size)
        
        if (strokeColor != nil) {
            layer.borderColor = strokeColor!.CGColor
        }
        if (strokeWidth != nil) {
            layer.borderWidth = strokeWidth!
        }
    }
}


extension UIButton {
    func configureImageButton(imageName: String, buttonSize: CGSize?, strokeColor: UIColor?, strokeWidth: CGFloat?) {
        
        setImage(UIImage(named: imageName), forState: .Normal)
        
        buttonSize != nil ? autoSetDimensionsToSize(buttonSize!) : autoSetDimensionsToSize(Default.Size)
        
        if (strokeColor != nil) {
            layer.borderColor = strokeColor!.CGColor
        }
        if (strokeWidth != nil) {
            layer.borderWidth = strokeWidth!
        }
    }
    
    func configureTextButton(text: String, buttonSize: CGSize?, color: UIColor?, strokeColor: UIColor?, strokeWidth: CGFloat?, font: UIFont?, fontColor: UIColor?, cornerRadius: CGFloat?) {
        
        setTitle(text, forState: .Normal)
        buttonSize != nil ? autoSetDimensionsToSize(buttonSize!) : autoSetDimensionsToSize(Default.Size)

        if (color != nil) {
            backgroundColor = color!
        }
        else {
            backgroundColor = UIColor.whiteColor()
        }
        
        if (fontColor != nil) {
            setTitleColor(fontColor!, forState: .Normal)
        }
        else {
            setTitleColor(UIColor.whiteColor(), forState: .Normal)
        }
        
        if (strokeColor != nil) {
            layer.borderColor = strokeColor!.CGColor
        }
        if (strokeWidth != nil) {
            layer.borderWidth = strokeWidth!
        }
        
        if (font != nil) {
            titleLabel!.font = font!
        }

        if (cornerRadius != nil) {
            layer.cornerRadius = cornerRadius!
        }
    }
}

extension UITextField {
    func configureTextField(placeHolderText: String?, fontToSet: UIFont?, textColorToSet: UIColor?, alignment: NSTextAlignment?, backgroundColorToSet: UIColor?, fieldSize: CGSize?, cornerRadius: CGFloat?) {
        if(placeHolderText != nil) {
            placeholder = placeHolderText!
        }
        
        if(fontToSet != nil) {
            font = fontToSet!
        }
        
        if(textColorToSet != nil) {
            textColor = textColorToSet!
        }
        
        if(alignment != nil) {
            textAlignment = alignment!
        }
        else {
            textAlignment = .Left
        }
        
        if (textAlignment == .Left) {
            layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0);
        }
        
        if(backgroundColorToSet != nil) {
            backgroundColor = backgroundColorToSet!
        }
        else {
            backgroundColor = .whiteColor()
        }
        
        if(fieldSize != nil) {
            autoSetDimensionsToSize(fieldSize!)
        }
        else {
            autoSetDimensionsToSize(Default.Size)
        }
        
        if (cornerRadius != nil) {
            layer.cornerRadius = cornerRadius!
        }
    }
}

extension UILabel {
    func configureLabel(textToSet: String?, attributedTextToSet: NSMutableAttributedString?, fontToSet: UIFont?, color: UIColor?, alignment: NSTextAlignment?) {
        font = fontToSet
        textColor = color
        textAlignment = alignment != nil ? alignment! : NSTextAlignment.Left
        
        if(textToSet != nil) {
            text = textToSet!
        }
        else if(attributedTextToSet != nil){
            attributedText = attributedTextToSet!
        }
    }
}