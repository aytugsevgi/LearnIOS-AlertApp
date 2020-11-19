//
//  ViewController.swift
//  AlertApp
//
//  Created by aytug on 19.11.2020.
//  Copyright © 2020 aytug. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        if usernameText.text!.isEmpty{
            showAlert(title: "Error", message: "Username can not be empty")
        }
        else if passwordText.text!.isEmpty{
            showAlert(title: "Error", message: "Password can not be empty")
        }
        else if passwordText.text! != password2Text.text! {
            showAlert(title: "Error", message: "Passwords did not match")
        }
        else{
            showAlert(title: "Success", message: "Sign up succesfully completed")
        }
        
    }
    
    func showAlert(title : String, message : String){
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            self.usernameText.text = ""
            self.passwordText.text = ""
            self.password2Text.text = ""
        }
        alertMessage.addAction(okButton)
        self.present(alertMessage, animated: true, completion: nil)
    }
    
}

