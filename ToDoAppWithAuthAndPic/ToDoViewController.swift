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
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addPressed(_ sender: Any) {
        
        if let img = imgView.image, let text = textView.text {
        }
    }
 
    @IBAction func addImagePressed(_ sender: Any) {
        
        let controller = UIImagePickerController()
        controller.delegate = self
        controller.sourceType = .photoLibrary
        present(controller, animated: true, completion: nil)
    }
    
}









extension ToDoViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        imgView.image = image
        imgView.contentMode = .scaleAspectFit
        
        dismiss(animated: true, completion: nil)
        
    }
    
}

















