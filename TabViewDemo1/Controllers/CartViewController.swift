//
//  CartViewController.swift
//  TabViewDemo1
//
//  Created by satyam dixit on 14/01/21.
//

import UIKit

class CartViewController: UIViewController {

    @IBOutlet weak var menuBttn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuBttn.target = self.revealViewController()
            menuBttn.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        view.backgroundColor = .red
        title = "Cart"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
