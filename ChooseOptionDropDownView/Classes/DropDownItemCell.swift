//
//  DropDownItemCell.swift
//  FabiManager
//
//  Created by quan nguyen on 10/15/19.
//  Copyright © 2019 quan nguyen. All rights reserved.
//

import UIKit

class DropDownItemCell: UITableViewCell {
    
    var item: DropDownItem? {
        didSet {
            labelItemName.text = item?.title
            guard let isChoose = item?.isSelected, isChoose else {
                self.accessoryType = .none
                labelItemName.textColor = UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 1)
                return
            }
            
            labelItemName.textColor = UIColor(red: 0.02, green: 0.376, blue: 0.651, alpha: 1)
            self.accessoryType = .checkmark
        }
    }

    @IBOutlet weak var labelItemName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        labelItemName.textColor = UIColor(red: 0.21, green: 0.21, blue: 0.21, alpha: 1)
        labelItemName.font = UIFont(name: "SanFranciscoDisplay-Regular", size: 15)
        self.tintColor = UIColor(red: 0.02, green: 0.376, blue: 0.651, alpha: 1)

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
