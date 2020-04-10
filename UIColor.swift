//
//  TestProjectBaseVC.swift
//  TestProject
//
//  Created by SAI on 10/04/20.
//  Copyright © 2020 Sai Kishore. All rights reserved.
//

import UIKit

extension UIColor {
    
    static let theme = UIColor.init(red: 30.0/255.0, green: 183.0/255.0, blue: 112.0/255.0, alpha: 1.0)
    
    class func fromRGB(rgb:UInt32) -> UIColor {
        return UIColor(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    class func fromRGB_Alpha(rgb:UInt32,alpha:Float) -> UIColor {
        return UIColor(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
    
    class func defaultBlueColor() -> UIColor
    {
        return UIColor.fromRGB(rgb: 0x326bb7)
    }
    
    class func defaultGrayColor() -> UIColor
    {
        return UIColor.fromRGB(rgb: 0x929292)
    }
    
    class func defaultRedColor() -> UIColor
    {
        return UIColor.fromRGB(rgb: 0xE05F5D)
    }
    
}
