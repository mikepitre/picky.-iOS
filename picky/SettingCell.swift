//
//  SettingCell.swift
//  picky
//
//  Created by Mike Pitre on 2/10/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class SettingCell: UITableViewCell {
    
    @IBOutlet weak var settingCellImage: UIImageView!
    @IBOutlet weak var settingCellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        settingCellLabel.backgroundColor = UIColor(white: 0.0, alpha: 0.35)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
