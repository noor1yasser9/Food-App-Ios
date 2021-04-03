//
//  ResTableViewCell.swift
//  HomeLap1
//
//  Created by Nor on 12/01/1400 AP.
//

import UIKit

class ResTableViewCell: UITableViewCell {

    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var txtDesc: UILabel!
    @IBOutlet weak var txtPriceDelivery: UILabel!
    @IBOutlet weak var txtRating: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    func bindData(rest:Resturant)  {
        txtName.text = rest.name
        txtDesc.text = rest.desic
        txtRating.text = rest.rating
        txtPriceDelivery.text = rest.priceDelivert
        mImage.image = UIImage(named: rest.image)
    }
    
}
