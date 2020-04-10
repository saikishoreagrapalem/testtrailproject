//
//  UINavigationBar.swift
//  TestProject
//
//  Created by SAI on 10/04/20.
//  Copyright © 2020 Sai Kishore. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    override open func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        
        if ( self.point(inside: point, with: event)) {
            self.isUserInteractionEnabled = true
        } else {
            self.isUserInteractionEnabled = false
        }
        
        return super.hitTest(point, with: event)
    }
    
    
    func makeClear() {
        self.isTranslucent = true
        self.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.backgroundColor = UIColor.clear
        self.shadowImage = nil
        self.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.barTintColor = UIColor.clear
        self.tintColor = UIColor.clear
        if #available(iOS 13.0, *) {
        }
        else{
            let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
            if statusBar.responds(to: #selector(setter: UIView.backgroundColor)) {
                statusBar.backgroundColor = UIColor.clear
            }
        }
        hideBottomHairline()
    }
    
    func makeDefault(_ title: String) {
        self.isTranslucent = false
        self.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.backgroundColor = UIColor.fromRGB(rgb: 0x329EEA)
        self.shadowImage = nil
        self.topItem?.title = title
        self.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.barTintColor = UIColor.fromRGB(rgb: 0x329EEA)
        if #available(iOS 13.0, *) {
        }
        else{
            let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
            if statusBar.responds(to: #selector(setter: UIView.backgroundColor)) {
                statusBar.backgroundColor = UIColor.fromRGB(rgb: 0x329EEA)
            }
        }
        showBottomHairline()
    }
    
    
    func hideBottomHairline() {
        let navBarHairlineImageView = findHairlineImageViewUnder(view: self)
        navBarHairlineImageView?.isHidden = true;
    }
    
    func showBottomHairline() {
        let navBarHairlineImageView = findHairlineImageViewUnder(view: self)
        navBarHairlineImageView?.isHidden = false;
    }
    
    func findHairlineImageViewUnder(view:UIView) -> UIImageView! {
        
        if view.isKind(of: UIImageView.self) && view.bounds.size.height <= 1.0
        {
            return view as? UIImageView;
        }
        
        for subview in view.subviews
        {
            let imageView = findHairlineImageViewUnder(view: subview)
            
            if let imgView = imageView
            {
                return imgView
            }
        }
        return nil
    }
}
