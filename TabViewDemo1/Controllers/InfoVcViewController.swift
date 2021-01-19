//
//  InfoVcViewController.swift
//  TabViewDemo1
//
//  Created by satyam dixit on 07/01/21.
//

import UIKit

protocol SaveInfoDelegate:AnyObject {
    func nameInfo(_ text : String)
    func preferInfo(_ text : String)
}

class InfoVcViewController: UIViewController{
    
    weak var delegate : SaveInfoDelegate?
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var preferTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func clickBtn(_ sender: Any) {
    
        self.navigationController?.popViewController(animated: true)
        self.delegate?.nameInfo(nameTxt.text ?? "")
        self.delegate?.preferInfo(preferTxt.text ?? "")
        
    }


}

