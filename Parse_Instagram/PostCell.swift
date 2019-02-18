//
//  PostCell.swift
//  Parse_Instagram
//
//  Created by Miguel Barba on 2/16/19.
//  Copyright © 2019 MBH. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var captionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
