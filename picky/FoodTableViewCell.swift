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
    @IBOutlet weak var foodCellLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        foodCellLabel.backgroundColor = UIColor(white: 0.0, alpha: 0.35)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
