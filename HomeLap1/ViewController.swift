//
//  ViewController.swift
//  HomeLap1
//
//  Created by Nor on 11/01/1400 AP.
//

import UIKit

class ViewController: UIViewController {
    let storybord = UIStoryboard(name: "Main", bundle: .main)
    

    
    @IBOutlet weak var mTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mTable.register(UINib(nibName: "ResTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        mTable.delegate = self
        mTable.dataSource = self
        
    }

    
    

}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturantList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ResTableViewCell
        
        cell.bindData(rest: resturantList[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        	
        let cv = storybord.instantiateViewController(identifier: "DetailsViewController") as! DetailsViewController
        cv.title = "Details Resturant"
        cv.resturant = resturantList[indexPath.row]
        self.navigationController?.pushViewController(cv, animated: true)
        
    }
}

