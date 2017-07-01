//
//  TableViewCell.swift
//  TableViewButtons
//
//  Created by APPLE on 01/07/17.
//  Copyright © 2017 rsku. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lbl_Title: UILabel!

    @IBOutlet weak var btn_Log: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
