//
//  ThirdTableViewCell.swift
//  FirstTableView
//
//  Created by Appinventiv on 21/02/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {

    @IBOutlet weak var thirdUserImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
