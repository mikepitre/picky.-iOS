//
//  FlavorTableVC.swift
//  picky
//
//  Created by Mike Pitre on 2/4/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

import UIKit

class FlavorTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var flavors:[Flavor] = [
        Flavor(name: "Tacos", image: "tacos"),
        Flavor(name: "Spicy", image: "spicy"),
        Flavor(name: "Healthy", image: "healthy"),
        Flavor(name: "Pizza", image: "pizza"),
        Flavor(name: "Sushi", image: "sushi"),
        Flavor(name: "BBQ", image: "bbq"),
        Flavor(name: "Sandwiches", image: "sandwich"),
        Flavor(name: "Burgers", image: "burgers"),
        Flavor(name: "Pasta", image: "pasta"),
        Flavor(name: "Asian", image: "asian"),
        Flavor(name: "Salad", image: "salad"),
        Flavor(name: "Seafood", image: "seafood"),
        Flavor(name: "Dessert", image: "dessert"),
        Flavor(name: "Breakfast", image: "pancakes"),
        Flavor(name: "Brunch", image: "brunch")
    ]
    
    var selectedFlavors: [String] = []
    
    @IBOutlet weak var nextButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let nextFont = UIFont(name: "Magra", size: 17.0)
        nextButton.setTitleTextAttributes([NSFontAttributeName: nextFont!], forState: UIControlState.Normal)
        
        self.navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Magra", size: 28.0)!, NSForegroundColorAttributeName: UIColor(red: 231/255.0, green: 59/255.0, blue: 64/255.0, alpha: 1)]
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flavors.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("foodCell", forIndexPath: indexPath) as! FoodTableViewCell
        
        cell.cellImage.image = UIImage(named: "\(flavors[indexPath.row].image)")
        cell.foodCellLabel.text = flavors[indexPath.row].name
        
        if selectedFlavors.contains(flavors[indexPath.row].name) {
            cell.foodCellLabel.textColor = UIColor(red: 231/255.0, green: 59/255.0, blue: 64/255.0, alpha: 1)
        } else {
            cell.foodCellLabel.textColor = UIColor.whiteColor()
        }
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! FoodTableViewCell
        
        if selectedFlavors.contains(flavors[indexPath.row].name) {
            let newArr = selectedFlavors.filter {$0 != "\(flavors[indexPath.row].name)"}
            selectedFlavors = newArr
            cell.foodCellLabel.textColor = UIColor.whiteColor()
        } else {
            selectedFlavors.append(flavors[indexPath.row].name)
            cell.foodCellLabel.textColor = UIColor(red: 231/255.0, green: 59/255.0, blue: 64/255.0, alpha: 1)
        }
        
        print(selectedFlavors)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToSetting" {
            let destinationVC = segue.destinationViewController as! SettingTableVC
            destinationVC.selectedFlavors = self.selectedFlavors
        }
    }
    
    
    
}
