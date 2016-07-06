//
//  BusinessCell.swift
//  Yelp
//
//  Created by zach lee on 7/3/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var thumbImageView: UIImageView!
    
    @IBOutlet weak var starImageView: UIImageView!
    
    @IBOutlet weak var reviewsLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var foodTypeLabel: UILabel!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    var business: Business! {
        didSet {
            thumbImageView.setImageWithURL(business.imageURL!)
            starImageView.setImageWithURL(business.ratingImageURL!)
            reviewsLabel.text = "\(business.reviewCount!) Reviews"
            titleLabel.text = business.name
            addressLabel.text = business.address
            foodTypeLabel.text = business.categories
            distanceLabel.text = business.distance
        }
    }
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbImageView.layer.cornerRadius = 5
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
