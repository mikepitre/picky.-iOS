//
//  SettingTableVC.swift
//  picky
//
//  Created by Mike Pitre on 2/9/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class SettingTableVC: UIViewController {
    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
