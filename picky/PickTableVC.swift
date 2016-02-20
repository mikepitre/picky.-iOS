//
//  PickTableVC.swift
//  picky
//
//  Created by Mike Pitre on 2/20/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit
import Alamofire

class PickTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var pickImage: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier("mapCell", forIndexPath: indexPath) as! MapCell
            return cell
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("pickCell", forIndexPath: indexPath) as! PickCell
            cell.pickCellLabel.text = "Open Until 10:00PM"
            return cell
        }
    
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

}
