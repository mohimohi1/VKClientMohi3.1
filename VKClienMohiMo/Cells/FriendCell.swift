//
//  FriendCell.swift
//  VKClienMohiMo
//
//  Created by Михаил Мохнач on 22/05/2019.
//  Copyright © 2019 Михаил Мохнач. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    
    
    static let reuseidentifier = "FriendCell"
    
    
    @IBOutlet weak var friendNameLabel: UILabel!
    
    @IBOutlet weak var avatarImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


}
