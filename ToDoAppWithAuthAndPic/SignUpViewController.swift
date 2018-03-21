//
//  SignUpViewController.swift
//  ToDoAppWithAuthAndPic
//
//  Created by Bilal on 3/19/18.
//  Copyright © 2018 Bilal. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: HoshiTextField!
    @IBOutlet weak var passwordTextfield: HoshiTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signInPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signUpPressed(_ sender: Any) {
        
        if let text = emailTextfield.text, let password = passwordTextfield.text{
            
            Auth.auth().createUser(withEmail: text, password: password) { (user, error) in
                
                if error != nil {
                    print(error!)
                }else {
                    print("SUCCESSFUL")

                    self.performSegue(withIdentifier: "goToTodo1", sender: self)
                    
                }
            }
            
        }
        
    }
    
    
    @IBAction func signInPressedDismiss(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
