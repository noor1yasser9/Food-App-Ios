//
//  ProfileViewController.swift
//  HomeLap1
//
//  Created by Nor on 13/01/1400 AP.
//

import UIKit

class ProfileViewcontroller: UIViewController {
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var txtPhone: UILabel!
    @IBOutlet weak var txtEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtName.text = userLogin.name
        txtPhone.text = userLogin.phone
        txtEmail.text = userLogin.email
        
    }
    @IBAction func btnLogOut(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)

    }
}
