//
//  CartViewController.swift
//  HomeLap1
//
//  Created by Nor on 13/01/1400 AP.
//

import UIKit


class CartViewController: UIViewController, OnClick {
    func onClick() {
        getTotal()
    }
    
    
    @IBOutlet weak var mTable: UITableView!
    
    
    @IBOutlet weak var txtTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mTable.register(UINib(nibName: "CartTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        mTable.delegate = self
        mTable.dataSource = self
        getTotal()
       

    }
    
    func getTotal() {
        var total = 0
        cartList.forEach { (Orders) in
            total = total + Orders.total
        }
        txtTotal.text = "$" + String(total)
    }

}


extension CartViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CartTableViewCell
        cell.bindData(order: cartList[indexPath.row])
        cell.onClick = self
        return cell
    }
    
    
}
