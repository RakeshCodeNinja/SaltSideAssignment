//
//  HomeTableViewCell.swift
//  SaltSideAssignment
//
//  Created by Rakesh Sharma on 23/11/20.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        backView.layer.cornerRadius = 8
        backView.layer.borderWidth = 1
        backView.layer.borderColor = UIColor.gray.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
