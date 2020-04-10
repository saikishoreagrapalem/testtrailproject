//
//  NewsCollectionViewCell.swift
//  TestProject
//
//  Created by SAI on 10/04/20.
//  Copyright © 2020 Sai Kishore. All rights reserved.
//

import UIKit

class NewsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var snippetLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.flexibleWidth.rawValue | UIView.AutoresizingMask.flexibleHeight.rawValue)
        // Initialization code
    }

}
