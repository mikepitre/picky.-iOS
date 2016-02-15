//
//  SettingTableVC.swift
//  picky
//
//  Created by Mike Pitre on 2/9/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class SettingTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var selectedFlavors: [String] = []
    var selectedSettings: [String] = []
    var settings: [Flavor] = [
        Flavor(name: "Beer", image: "beer"),
        Flavor(name: "Cocktails", image: "cocktail"),
        Flavor(name: "Vegetarian", image: "vegetarian"),
        Flavor(name: "Vegan", image: "vegan"),
        Flavor(name: "Gluten-Free", image: "gluten-free"),
        Flavor(name: "Outdoor-Seating", image: "outdoor-seating"),
        Flavor(name: "Take-Out", image: "take-out")
    ]
    
    @IBOutlet weak var nextButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "picky."
        
        let nextFont = UIFont(name: "Magra", size: 17.0)
        nextButton.setTitleTextAttributes([NSFontAttributeName: nextFont!], forState: UIControlState.Normal)
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        
        print(selectedFlavors)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("settingCell", forIndexPath: indexPath) as! SettingCell
        
        cell.settingCellImage.image = UIImage(named: "\(settings[indexPath.row].image)")
        cell.settingCellLabel.text = settings[indexPath.row].name
        
        if selectedSettings.contains(settings[indexPath.row].name) {
            cell.settingCellLabel.textColor = UIColor(red: 231/255.0, green: 59/255.0, blue: 64/255.0, alpha: 1)
        } else {
            cell.settingCellLabel.textColor = UIColor.whiteColor()
        }
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! SettingCell
        
        if selectedSettings.contains(settings[indexPath.row].name) {
            let newArr = selectedSettings.filter {$0 != "\(settings[indexPath.row].name)"}
            selectedSettings = newArr
            cell.settingCellLabel.textColor = UIColor.whiteColor()
        } else {
            selectedSettings.append(settings[indexPath.row].name)
            cell.settingCellLabel.textColor = UIColor(red: 231/255.0, green: 59/255.0, blue: 64/255.0, alpha: 1)
        }
        
        print(selectedSettings)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToBudget" {
            let destinationVC = segue.destinationViewController as! BudgetTableVC
            destinationVC.selectedFlavors = self.selectedFlavors
            destinationVC.selectedSettings = self.selectedSettings
        }
    }

}
