//
//  LoginViewController.swift
//  Parse_Instagram
//
//  Created by Miguel Barba on 2/15/19.
//  Copyright © 2019 MBH. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func textFieldsEmpty() -> Bool{
        return (usernameField.text == "") ||  (passwordField.text == "")
    }
    @IBAction func onSignIn(_ sender: Any) {
        if !textFieldsEmpty(){
            let username = usernameField.text!
            let password = passwordField.text!
            PFUser.logInWithUsername(inBackground: username, password: password, block: { (user, error ) in
                if user != nil {
                    self.performSegue(withIdentifier: "loginSegue", sender: nil)
                } else {
                    print("Error: \(String(describing: error?.localizedDescription))")
                }
            })
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        if !textFieldsEmpty(){
            let user = PFUser()
            user.username = usernameField.text
            user.password = passwordField.text
            user.signUpInBackground{ (success, error) in
                if success {
                    self.performSegue(withIdentifier: "loginSegue", sender: nil)
                } else {
                    print("Error: \(String(describing: error?.localizedDescription))")
                }
            }
        }
    }
}
