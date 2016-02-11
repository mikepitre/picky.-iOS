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
    var budget = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "picky."
        
        print(selectedFlavors)
        print(budget)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("settingCell", forIndexPath: indexPath)
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

}
