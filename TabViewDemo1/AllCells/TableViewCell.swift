//
//  TableViewCell.swift
//  TabViewDemo1
//
//  Created by satyam dixit on 07/01/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgViewInTblViewCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.contentView.layer.backgroundColor = CGColor.init(red: 100, green: 50, blue: 50, alpha: 1)
        self.contentView.layer.borderWidth = 2.0
        self.contentView.layer.cornerRadius = 40.0
        self.clipsToBounds = true
        
        imgViewInTblViewCell.clipsToBounds = true
        imgViewInTblViewCell.layer.cornerRadius = 30.0
        imgViewInTblViewCell.layer.borderWidth = 2.0
        imgViewInTblViewCell.layer.borderColor = UIColor.darkGray.cgColor
        
    }

}


//slide menu , stack view controller, scroll view, core data.
