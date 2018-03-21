//
//  SignInViewController.swift
//  ToDoAppWithAuthAndPic
//
//  Created by Bilal on 3/19/18.
//  Copyright © 2018 Bilal. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextfield: HoshiTextField!
    @IBOutlet weak var passwordTextfield: HoshiTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func signInPressed(_ sender: Any) {
        
        if let text = emailTextfield.text, let password = passwordTextfield.text {
            
            Auth.auth().signIn(withEmail: text, password: password, completion: { (user, error) in
                
                if error != nil {
                    print(error!)
                }else{
                    print("SUCCESS")
                    
                    self.performSegue(withIdentifier: "goToTodo", sender: self)
                    
                }
                
            })
            
        }
        
    }
    
}
