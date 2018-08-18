//
//  TableViewCell.swift
//  ShowImageByUrl
//
//  Created by admin on 8/17/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
//    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
//    
//    @IBAction func buttonStartSpinning(_ sender: UIButton) {
//        activityIndicator.startAnimating()
//    }
    @IBOutlet weak var photoImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
