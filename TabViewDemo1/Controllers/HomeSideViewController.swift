//
//  HomeSideViewController.swift
//  TabViewDemo1
//
//  Created by satyam dixit on 12/01/21.
//

import UIKit

class HomeSideViewController: UIViewController {

    @IBOutlet weak var menuBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMenuBtn(menuBtn)
        title = "Home Screen of Side Bar"
    
    }
    
    //MARK: Create Function for menu Action
    func setMenuBtn(_ menuBar: UIBarButtonItem){
        menuBar.target = revealViewController()
        menuBar.action = #selector(SWRevealViewController.revealToggle(_:))
        
        view.addGestureRecognizer(self.revealViewController()
            .panGestureRecognizer())
    }
}
