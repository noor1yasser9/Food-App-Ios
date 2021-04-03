//
//  UpdateProfileViewController.swift
//  HomeLap1
//
//  Created by Nor on 14/01/1400 AP.
//

import UIKit


class UpdateProfileViewController : UIViewController{
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtPhone.text = userLogin.phone
        txtPassword.text = userLogin.password
        txtName.text = userLogin.name
        txtEmail.text = userLogin.email
    }
    
    @IBAction func btnUpdate(_ sender: Any) {
        if !txtName.text!.isEmpty, !txtEmail.text!.isEmpty,
           !txtPhone.text!.isEmpty,!txtPassword.text!.isEmpty{
            for i in 0..<usersList.count {
                if usersList[i].email ==  txtEmail.text!{
                    showToast(message: "Email is Exists", seconds: 1.0)
                    return
                }else if i == usersList.count-1{
                let users = Users(name: txtName.text!, phone: txtPhone.text!, email: txtEmail.text!, password: txtPassword.text!)
                usersList[i] = users
                    userLogin = users
                    self.dismiss(animated: true, completion: nil)
                }
            }
        }else{
            self.showToast(message: "All fields are required", seconds: 1.0)
        }
    }
    
    
    func showToast(message : String, seconds: Double){
            let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            alert.view.backgroundColor = .black
            alert.view.alpha = 0.5
            alert.view.layer.cornerRadius = 15
            self.present(alert, animated: true)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds) {
                alert.dismiss(animated: true)
            }
        }
}
