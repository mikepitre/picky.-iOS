//
//  FoodTableViewCell.swift
//  picky
//
//  Created by Mike Pitre on 2/3/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
