//
//  SidebarTableViewCell.swift
//  TabViewDemo1
//
//  Created by satyam dixit on 13/01/21.
//

import UIKit

class SidebarTableViewCell: UITableViewCell {

    @IBOutlet weak var imgSideMenu1: UIImageView!
    @IBOutlet weak var lblMenu1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
