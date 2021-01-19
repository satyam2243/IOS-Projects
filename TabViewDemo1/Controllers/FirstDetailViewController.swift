//
//  FirstDetailViewController.swift
//  TabViewDemo1
//
//  Created by satyam dixit on 08/01/21.
//

import UIKit

class FirstDetailViewController: UIViewController {

    @IBOutlet weak var mydetailimgView: UIImageView!
    
    @IBOutlet weak var mydetailtxtView: UITextView!
    
    var imagePassed: UIImage! = nil
    var detailedTextPassed: String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mydetailimgView.image = imagePassed
        self.mydetailtxtView.text = detailedTextPassed
        
        mydetailimgView.layer.cornerRadius = 70.0
    }

}
