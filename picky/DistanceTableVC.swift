//
//  DistanceTableVC.swift
//  picky
//
//  Created by Mike Pitre on 2/16/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class DistanceTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var selectedFlavors: [String] = []
    var selectedSettings: [String] = []
    var selectedBudget = ""
    
    var selectedDistance = "\(9.99/0.00062137)"
    let distances = ["Less than 1 Mile", "Less than 5 Miles", "Less than 10 Miles"]
    
    
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
        print(selectedBudget)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return distances.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("distanceCell", forIndexPath: indexPath) as! DistanceCell
        
        cell.distanceCellLabel.text = distances[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! DistanceCell
        
        if cell.distanceCellLabel.text == distances[0] {
            selectedDistance = "\(0.99/0.00062137)"
        } else if cell.distanceCellLabel.text == distances[1] {
            selectedDistance = "\(4.99/0.00062137)"
        } else {
            selectedDistance = "\(9.99/0.00062137)"
        }
        
        print(selectedDistance)

    }

}
