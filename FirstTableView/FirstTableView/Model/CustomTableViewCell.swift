//
//  CustomTableViewCell.swift
//  FirstTableView
//
//  Created by Appinventiv on 21/02/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        userImage.layer.cornerRadius = userImage.bounds.height/2.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
