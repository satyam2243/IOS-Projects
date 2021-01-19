//
//  ShowInfoViewController.swift
//  TabViewDemo1
//
//  Created by satyam dixit on 07/01/21.
//

import UIKit



class ShowInfoViewController: UIViewController,SaveInfoDelegate{
  
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var preferanceLbl: UILabel!
    @IBOutlet weak var logolbl: UILabel!
    @IBOutlet weak var menuBttn: UIBarButtonItem!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        nameLbl.layer.borderWidth = 2.0
        nameLbl.layer.borderColor = UIColor.black.cgColor
        nameLbl.layer.cornerRadius = 20.0
        
        preferanceLbl.layer.borderWidth = 2.0
        preferanceLbl.layer.borderColor = UIColor.black.cgColor
        preferanceLbl.layer.cornerRadius = 20.0
        
        logolbl.layer.cornerRadius = 70.0
        logolbl.clipsToBounds = true
        
        
        
        if self.revealViewController() != nil {
            menuBttn.target = self.revealViewController()
            menuBttn.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
    }
    @IBAction func showInfoButton(_ sender: Any) {
        guard let ScView = self.storyboard?.instantiateViewController(identifier: "InfoVcViewController") as? InfoVcViewController
        else {
            fatalError("View Controller Not Found")
        }
        
        ScView.delegate = self
        
        if preferanceLbl.text == "" {
        navigationController?.pushViewController(ScView, animated: true)
        }
        else{
            let preferanceLblValue : String = preferanceLbl.text!
        }
    }

    func nameInfo(_ text: String) {
        nameLbl.text = "Welcome \(text) To InfoWorld!"
    }
    
    func preferInfo(_ text: String) {
        preferanceLbl.text = "Your Preference is \(text)"
    }
    
    
    
}
