//
//  MealsDetailsViewController.swift
//  HomeLap1
//
//  Created by Nor on 13/01/1400 AP.
//

import UIKit

class MealsDetailsViewController: UIViewController {
    
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var txtPrice: UILabel!
    @IBOutlet weak var txtOverview: UILabel!
    @IBOutlet weak var txtRating: UILabel!
    @IBOutlet weak var txtName: UILabel!
    
    var meal:Meals!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtName.text = meal.name
        txtOverview.text = meal.details
        txtPrice.text = "$"+meal.price
        txtRating.text = meal.rating
        mImage.image = UIImage(named: meal.image)
        
        
    }
    @IBAction func btnAddCart(_ sender: Any) {
        if !cartList.isEmpty {
        for i in 0..<cartList.count {
            if(cartList[i].meals.id == meal.id){
                cartList[i].count = cartList[i].count + 1
                cartList[i].total = Int(cartList[i].meals.price)! * cartList[i].count
                cartList[i] = cartList[i]
            }else if i == cartList.count-1{
                cartList.append(Orders(id: String(ids) , meals: meal, total: Int(meal.price)!, count: 1))
            }
        }
        }else{
            cartList.append(Orders(id: String(ids) , meals: meal, total: Int(meal.price)!, count: 1))
        }
    }
}
