//
//  customcell.swift
//  CustomDataPassingTableOperation
//
//  Created by nikhil boriwale on 4/26/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class customcell: UITableViewCell {
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblsirname: UILabel!
    @IBOutlet weak var profileimage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
