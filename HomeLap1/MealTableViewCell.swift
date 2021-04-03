//
//  MealTableViewCell.swift
//  HomeLap1
//
//  Created by Nor on 13/01/1400 AP.
//

import UIKit

class MealTableViewCell: UITableViewCell {

    @IBOutlet weak var txtDesc: UILabel!
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var txtRating: UILabel!
    @IBOutlet weak var txtPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindData(meal:Meals)  {
        txtName.text = meal.name
        txtPrice.text = "$"+meal.price
        txtRating.text = meal.rating
        txtDesc.text = meal.details
        mImage.image = UIImage(named: meal.image)
    }
    
}
