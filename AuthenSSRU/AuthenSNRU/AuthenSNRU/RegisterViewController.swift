//
//  RegisterViewController.swift
//  AuthenSNRU
//
//  Created by iMacStudent25 on 20/3/2562 BE.
//  Copyright © 2562 Tiwaporn. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    //My Outlet
    
    @IBOutlet weak var NameTextField: UITextField!
    
    @IBOutlet weak var UserTextField: UITextField!
    
    @IBOutlet weak var PassWordTextField: UITextField!
    
    //End  Outlet
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    } //Main Method
    
    
    
    @IBAction func uploadButton(_ sender: UIBarButtonItem) {
        print("You Cick Upload")
        
        let name = NameTextField.text!
        let user = UserTextField.text!
        let password = PassWordTextField.text!
        
        print("name =\(name)")
        print("user=\(user)")
        print("password\(password)")
        
        if (name.count == 0) || (user.count == 0) || (password.count == 0) {
            myAlert(titleString: "Have Sppsce", messageString: "Please Fill All Blank")
        } else {
            
        }
        
        
        
    } //upload Button
    
    func myAlert(titleString: String, messageString: String) -> Void {
        
       print("title =\(titleString), message =\(messageString)")
        let alert = UIAlertController(title: titleString, message: messageString, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        present(alert,animated: true,completion: nil)
        
        
    } //myAlert
    
    func uploadData(name:String,user:String,password:String) -> Void {
        let urlString = "https://www.androidthai.in.th/snru/addDatamuk.php?isAdd=true&Name=\(name)&User=\(user)&Password=\(password)"
        
        
        
    }
    
    
    @IBAction func BeckButton(_ sender: UIBarButtonItem) {
        
        print("You Click Back")
        performSegue(withIdentifier: "BackMain", sender: self  )
        
    }
    

} //Main Class
