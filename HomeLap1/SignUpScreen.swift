//
//  SignUpScreen.swift
//  HomeLap1
//
//  Created by Nor on 11/01/1400 AP.
//
import UIKit

class SignUpScreen: UIViewController {

    @IBAction func btnLogin(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnsignUpS(_ sender: Any) {
        if !txtNumber.text!.isEmpty,
            !txtName.text!.isEmpty ,
           !txtEmail.text!.isEmpty,
          !txtPassword.text!.isEmpty{
            let user = Users(name: txtName.text!, phone: txtNumber.text!, email:  txtEmail.text!, password:  txtPassword.text!)
            usersList.append(user)
            self.navigationController?.popViewController(animated: true)
        }    else{
            self.showToast(message: "All fields are required", seconds: 1.0)
        }
    }
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var txtPassword: UITextField!

    

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
