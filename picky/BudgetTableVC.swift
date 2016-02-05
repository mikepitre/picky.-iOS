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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "picky."
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

}
