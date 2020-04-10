//
//  UIViewController.swift
//  TestProject
//
//  Created by SAI on 10/04/20.
//  Copyright © 2020 Sai Kishore. All rights reserved.
//

import UIKit


extension TestProjectBaseVC {
    func navigationTitleImageView(imgName: String){
        self.navigationItem.setHidesBackButton(true, animated:true)
        let logo = UIImage(named: imgName)
        self.navigationTitleImageView.image = logo
        self.navigationTitleImageView.contentMode = .scaleAspectFit
        self.navigationTitleImageView.translatesAutoresizingMaskIntoConstraints = false
        if let navC = self.navigationController{
            navC.navigationBar.addSubview(self.navigationTitleImageView)
            self.navigationTitleImageView.centerXAnchor.constraint(equalTo: navC.navigationBar.centerXAnchor).isActive = true
            self.navigationTitleImageView.centerYAnchor.constraint(equalTo: navC.navigationBar.centerYAnchor, constant: 0).isActive = true
            self.navigationTitleImageView.widthAnchor.constraint(equalTo: navC.navigationBar.widthAnchor, multiplier: 0.85).isActive = true
            self.navigationTitleImageView.heightAnchor.constraint(equalTo: navC.navigationBar.widthAnchor, multiplier: 0.098).isActive = true
        }
    }
}
