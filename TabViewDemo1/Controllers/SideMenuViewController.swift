//
//  SideMenuViewController.swift
//  TabViewDemo1
//
//  Created by satyam dixit on 12/01/21.
//

import UIKit


class SideMenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
  
    var imagesArr = [UIImage]()
    var menuNames = [String]()
    @IBOutlet weak var tableViewSideMenu: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Side Screen of side bar"
        
        imagesArr += [UIImage(systemName: "person")!, UIImage(systemName: "house")!, UIImage(systemName: "bag")!, UIImage(systemName: "person")!, UIImage(systemName: "person")!]
        
        menuNames = ["Account", "Home", "Cart", "Next","Table"]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SidebarTableViewCell", for: indexPath) as! SidebarTableViewCell
        
        cell.imgSideMenu1.image = imagesArr[indexPath.row]
        cell.lblMenu1.text = menuNames[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
//        switch row{
//        case 0:
//            performSegue(withIdentifier: "account", sender: self)
//        case 1:
//            performSegue(withIdentifier: "Home", sender: self)
//        case 2:
//            performSegue(withIdentifier: "cart", sender: self)
//        case 3:
//            performSegue(withIdentifier: "Next", sender: self)
//        default:
//            performSegue(withIdentifier: "Table", sender: self)
//        }
        
        if indexPath.row == 0 {
            let vc = self.storyboard?.instantiateViewController(identifier: "AccountNavigationViewController")as? AccountNavigationViewController
           // vc!.modalPresentationStyle = .fullScreen
            self.present(vc!, animated: true, completion: nil)
            
        }

    }
    
    
}
