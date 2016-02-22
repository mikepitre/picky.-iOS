//
//  PickCell.swift
//  picky
//
//  Created by Mike Pitre on 2/20/16.
//  Copyright © 2016 Mike Pitre. All rights reserved.
//

import UIKit

class PickCell: UITableViewCell {
    
    @IBOutlet weak var pickCellLabel: UILabel!
    @IBOutlet weak var pickCellIcon: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
