//
//  CollectionViewCell.swift
//  TabViewDemo1
//
//  Created by satyam dixit on 07/01/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgLbl: UIImageView!
    @IBOutlet weak var sportsName: UILabel!
    
    override func draw(_ rect: CGRect) {
        self.contentView.layer.cornerRadius = 25.0
        self.contentView.layer.borderWidth = 1.0
        self.clipsToBounds = true
    
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowRadius = 4.0
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: 2, height: 0)
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
    }
}
