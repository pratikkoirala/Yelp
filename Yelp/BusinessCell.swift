//
//  BusinessCell.swift
//  Yelp
//
//  Created by Pratik Koirala on 2/20/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var ratingsImageview: UIImageView!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var pictureLabel: UIImageView!
    
    
    var business: Business! {
        didSet{
            titleLabel.text = business.name
            reviewsLabel.text = "\(business.reviewCount!) Reviews"
            distanceLabel.text = business.distance
            streetLabel.text = business.address
            ratingsImageview.setImageWith(business.ratingImageURL!)
            typeLabel.text = business.categories
            pictureLabel.setImageWith(business.imageURL!)
        
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //Round the corners of the picture
        pictureLabel.layer.cornerRadius = 5
        pictureLabel.clipsToBounds = true
        
        titleLabel.preferredMaxLayoutWidth = titleLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.preferredMaxLayoutWidth = titleLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
