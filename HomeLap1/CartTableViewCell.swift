//
//  CartTableViewCell.swift
//  HomeLap1
//
//  Created by Nor on 13/01/1400 AP.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var txtPrice: UILabel!
    @IBOutlet weak var txtTotal: UILabel!
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var mImage: UIImageView!
    private var orders:Orders!
    var onClick:OnClick!
    func bindData(order:Orders)  {
        orders = order
        txtTotal.text = "$"+String(order.total)
        txtPrice.text = String(order.count)
        txtName.text = order.meals.name
        mImage.image = UIImage(named: order.meals.image)
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        if orders.count >= 1 {
            orders.count = orders.count + 1
            orders.total = Int(orders.meals.price)! * orders.count
            txtPrice.text = String(orders.count)
            txtTotal.text = "$"+String(orders.total)
            onClick.onClick()
        }
    }
    @IBAction func btnMins(_ sender: Any) {
        if orders.count > 1 {
            orders.count = orders.count - 1
            orders.total = Int(orders.meals.price)! * orders.count
            txtPrice.text = String(orders.count)
            txtTotal.text = "$"+String(orders.total)
            onClick.onClick()
        }
    }
 
}

protocol OnClick {
    func onClick()
}
