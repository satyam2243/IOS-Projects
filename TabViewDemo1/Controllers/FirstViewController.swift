//
//  FirstViewController.swift
//  TabViewDemo1
//
//  Created by satyam dixit on 07/01/21.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate , UITableViewDataSource{
   
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var menuBttn: UIBarButtonItem!
    
    var imgArr = [UIImage]()
    var imgsName = [String]()
    var detailTxtName = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        if self.revealViewController() != nil {
            menuBttn.target = self.revealViewController()
            menuBttn.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
        imgArr  = [
                   UIImage(named: "images")!,
                   UIImage(named: "images-2")!,
                   UIImage(named: "images-3")!,
                   UIImage(named: "images-4")!,
                   UIImage(named: "images-5")!,
                   UIImage(named: "images-7")!,
                   UIImage(named: "images-8")!,
                   UIImage(named: "images-9")!,
                   UIImage(named: "images-10")!,
                   UIImage(named: "images-11")!,
                   UIImage(named: "images-12")!
                  ]
        
        imgsName = ["images", "images-2", "images-3", "images-4", "images-5", "images-7", "images-8", "images-9", "images-10", "images-11", "images-12"]
        
        detailTxtName = ["The panda, with its distinctive black and white coat, is adored by the world and considered a national treasure in China. This bear also has a special significance for WWF because it has been our logo since our founding in 1961",
                         
            "Pandas live mainly in temperate forests high in the mountains of southwest China, where they subsist almost entirely on bamboo. They must eat around 26 to 84 pounds of it every day, depending on what part of the bamboo they are eating. They use their enlarged wrist bones that function as opposable thumbs.",
            
            "A newborn panda is about the size of a stick of butter—about 1/900th the size of its mother—but females can grow up to about 200 pounds, while males can grow up to about 300 pounds as adults. These bears are excellent tree climbers despite their bulk.",
            
            
            "Giant pandas are solitary. They have a highly developed sense of smell that males use to avoid each other and to find females for mating in the spring. After a five-month pregnancy, females give birth to a cub or two, though they cannot care for both twins. The blind infants weigh only 5 ounces at birth and cannot crawl until they reach three months of age. They are born white, and develop their much loved coloring later.",
            
            
            "Tigers generally gain independence at around two years of age and attain sexual maturity at age three or four for females and four or five years for males. Juvenile mortality is high, however—about half of all cubs do not survive more than two years. Tigers have been known to reach up to 20 years of age in the wild.",
            
            
            "Lions are the only cats that live in groups, which are called prides—though there is one population of solitary lions. Prides are family units that may comprise anywhere from two to 40 lions—including up to to three or four males, a dozen or so females, and their young. All of a pride's lionesses are related, and female cubs typically stay with the group as they age. Young males eventually leave and establish their own prides by taking over a group headed by another male.",
            
            "Tigers are mostly solitary, apart from associations between mother and offspring. Individual tigers have a large territory, and the size is determined mostly by the availability of prey. Individuals mark their domain with urine, feces, rakes, scrapes, and vocalizing.",
            
            "Tigers live alone and aggressively scent-mark large territories to keep their rivals away. They are powerful nocturnal hunters that travel many miles to find buffalo, deer, wild pigs, and other large mammals. Tigers use their distinctive coats as camouflage (no two have exactly the same stripes). They lie in wait and creep close enough to attack their victims with a quick spring and a fatal pounce. A hungry tiger can eat as much as 60 pounds in one night, though they usually eat less.",
            
            
            "African lions face a variety of threats—most of which can be attributed to humans. Fearing that lions will prey on their livestock, which can be a significant financial blow, ranchers may kill the animals both in retaliation and as a preventative measure, sometimes using pesticides as poison. Poachers target the species, too, as their bones and other body parts are valuable in the illegal wildlife trade.",
            
            "Lions are the only cats that live in groups, which are called prides—though there is one population of solitary lions. Prides are family units that may comprise anywhere from two to 40 lions—including up to to three or four males, a dozen or so females, and their young. All of a pride's lionesses are related, and female cubs typically stay with the group as they age. Young males eventually leave and establish their own prides by taking over a group headed by another male",
            
            "African lions face a variety of threats—most of which can be attributed to humans. Fearing that lions will prey on their livestock, which can be a significant financial blow, ranchers may kill the animals both in retaliation and as a preventative measure, sometimes using pesticides as poison. Poachers target the species, too, as their bones and other body parts are valuable in the illegal wildlife trade.",
        ]
        
        self.tableView.delegate = self
        self.tableView.delegate = self
    }
    
    
    //MARK: Table View DataSource and Delegate methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        cell.imgViewInTblViewCell.image = imgArr[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard let Vc = self.storyboard?.instantiateViewController(withIdentifier: "FirstDetailViewController") as? FirstDetailViewController
        
        else {
            fatalError("view controller not found")
        }
        
        var i = 0
        let count = indexPath.row
        
        if count < imgArr.count {
            Vc.imagePassed = UIImage.init(named: imgsName[count])
            Vc.detailedTextPassed = String.init(detailTxtName[count])
            self.navigationController?.pushViewController(Vc, animated: true)
        }
        i = i+1

    }
    
}
