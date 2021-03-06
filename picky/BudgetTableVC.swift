//
//  BudgetTableVC.swift
//  picky
//
//  Created by Mike Pitre on 2/4/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class BudgetTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let budgets = ["$", "$$", "$$$", "$$$$"]
    
    var selectedFlavors: [String] = []
    var selectedSettings: [String] = []
    var selectedBudget = ""
    
    @IBOutlet weak var skipButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "picky."
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        
        let skipFont = UIFont(name: "Magra", size: 17.0)
        skipButton.setTitleTextAttributes([NSFontAttributeName: skipFont!], forState: UIControlState.Normal)

        print(selectedFlavors)
        print(selectedSettings)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("budgetCell", forIndexPath: indexPath) as! BudgetTableViewCell
        
        cell.budgetCellLabel.text = budgets[indexPath.row]
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToDistance" {
            let destinationVC = segue.destinationViewController as! DistanceTableVC
            
            destinationVC.selectedFlavors = self.selectedFlavors
            destinationVC.selectedSettings = self.selectedSettings
            destinationVC.selectedBudget = self.selectedBudget
        }
        
        if segue.identifier == "skipToDistance" {
            let destinationVC = segue.destinationViewController as! DistanceTableVC
            
            destinationVC.selectedFlavors = self.selectedFlavors
            destinationVC.selectedSettings = self.selectedSettings
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        selectedBudget = "\(budgets[indexPath.row].characters.count)"
        performSegueWithIdentifier("goToDistance", sender: DistanceCell())
        print(budgets[indexPath.row].characters.count)
    }
    

}
