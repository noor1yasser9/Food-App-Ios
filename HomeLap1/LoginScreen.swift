//
//  LoginScreen.swift
//  HomeLap1
//
//  Created by Nor on 11/01/1400 AP.
//


import UIKit

class LoginScreen: UIViewController {
    let storybord = UIStoryboard(name: "Main", bundle: .main)
  
    @IBAction func btnSignUp(_ sender: Any) {
      
        let cv = storybord.instantiateViewController(identifier: "SignUpScreen") as! SignUpScreen
        self.navigationController?.pushViewController(cv, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }
    @IBOutlet weak var txtEmail: UITextField!

    @IBOutlet weak var txtPassword: UITextField!
    @IBAction func btnLogin(_ sender: Any) {
        if !txtEmail.text!.isEmpty, !txtPassword.text!.isEmpty {
            for i in 0..<usersList.count{
                if usersList[i].email == txtEmail.text! && usersList[i].password == txtPassword.text! {
                    userLogin = usersList[i]
                    let cv = storybord.instantiateViewController(identifier: "MainTabBarController")
                    cv.modalPresentationStyle = .fullScreen
                    self.present(cv, animated: true, completion: nil)
                }
                else if i == usersList.count-1{
                        self.showToast(message: "Email or Password is not Vailed", seconds: 1.0)
                }
            }
        }
        else{
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
