//
//  DetailsViewController.swift
//  HomeLap1
//
//  Created by Nor on 12/01/1400 AP.
//

import UIKit

class DetailsViewController: UIViewController {

    let storybord = UIStoryboard(name: "Main", bundle: .main)
    
    
    @IBOutlet weak var mImage: UIImageView!
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var txtPrice: UILabel!
    @IBOutlet weak var txtRating: UILabel!
    @IBOutlet weak var txtOverview: UILabel!
    @IBOutlet weak var mTable: UITableView!
    @IBOutlet weak var vScroll: UIScrollView!
    
    var data:Array<Meals> = []
    var resturant : Resturant!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mImage.image =  UIImage(named: resturant.image)
        txtName.text = resturant.name
        txtPrice.text = "$"+resturant.priceDelivert
        txtRating.text = resturant.rating
        txtOverview.text = resturant.desic
        
        mealsList.forEach { (meal) in
            if(meal.idRest == resturant.id){
                data.append(meal)
                mTable.reloadData()
            }
        }
        
        mTable.register(UINib(nibName: "MealTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        mTable.delegate = self
        mTable.dataSource = self
        
        
    }
    
    
}

extension DetailsViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MealTableViewCell
        cell.bindData(meal: data[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cv = storybord.instantiateViewController(identifier: "MealsDetailsViewController") as! MealsDetailsViewController
        cv.title = "Details Meals"
        cv.meal = data[indexPath.row]
        self.present(cv, animated: true, completion: nil)
        
    }
    
    
}
