//
//  SecondViewController.swift
//  TabViewDemo1
//
//  Created by satyam dixit on 07/01/21.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    var arr = [UIImage]()
    var sportslbl = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sportslbl = ["football", "basketball", "swimming", "baseball"]

        arr += [UIImage(named: "football")!,
                UIImage(named: "basketball")!,
                UIImage(named: "swimming")!,
                UIImage(named: "baseball")!]
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        // Do any additional setup after loading the view.
        
        setMenuBtn(menuButton)
    }
    
    
    //MARK: Side bar action button
    
    func setMenuBtn(_ menuBar: UIBarButtonItem){
        menuBar.target = revealViewController()
        menuBar.action = #selector(SWRevealViewController.revealToggle(_:))
        
        view.addGestureRecognizer(self.revealViewController()
            .panGestureRecognizer())
    }
    
    //MARK: collectionView DataSource and delegates methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell
        if let imageView = cell?.imgLbl {
            imageView.image = arr[indexPath.item]
        }
        
        if let LabelText = cell?.sportsName {
            LabelText.text = sportslbl[indexPath.row]
        }
        
        return cell!
    }
    
    
    //MARK: collectionView FlowLayout methods
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var size: CGFloat
        if UIDevice.current.userInterfaceIdiom == .pad {
            size = (collectionView.bounds.width - 57)/3
        }
        else {
            size = (collectionView.bounds.width - 37)/2

        }
        let itemSize = CGSize(width: size, height: size)
            return itemSize
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
    }
        
    }
 




