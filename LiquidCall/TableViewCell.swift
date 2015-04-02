//
//  TableViewCell.swift
//  LiquidCall
//
//  Created by Takemi Watanuki on 2015/03/21.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//

import Foundation
import UIKit

class TableViewCell: UITableViewCell {

    
    
    @IBOutlet var nameLabel: UILabel?
//    @IBOutlet var prepTimeLabel: UILabel?
//    @IBOutlet var thumbnailImageView: UIImageView?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
