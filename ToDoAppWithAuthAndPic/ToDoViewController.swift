//
//  TodoViewController.swift
//  ToDoAppWithAuthAndPic
//
//  Created by Bilal on 3/21/18.
//  Copyright © 2018 Bilal. All rights reserved.
//

import UIKit

class ToDoViewController: UIViewController {
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addPressed(_ sender: Any) {
        
    }
    
 
    @IBAction func addImagePressed(_ sender: Any) {
    }
    
    
}
