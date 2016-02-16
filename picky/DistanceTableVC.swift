//
//  DistanceTableVC.swift
//  picky
//
//  Created by Mike Pitre on 2/16/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class DistanceTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let distances = ["Less than 1 Mile", "Less than 5 Miles", "Less than 10 Miles"]
    
    @IBOutlet weak var skipButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "picky."
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
        
        let skipFont = UIFont(name: "Magra", size: 17.0)
        skipButton.setTitleTextAttributes([NSFontAttributeName: skipFont!], forState: UIControlState.Normal)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
