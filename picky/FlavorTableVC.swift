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
        Flavor(name: "Sushi", image: "sushi")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("foodCell", forIndexPath: indexPath) as! FoodTableViewCell
        cell.cellImage.image = UIImage(named: "\(flavors[indexPath.row].image)")
        
        return cell
    }
    
    
}
