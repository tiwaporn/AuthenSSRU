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
        
        
        print("name =\(name)")
        
        
    }
    
    @IBAction func BeckButton(_ sender: UIBarButtonItem) {
        
        print("You Click Back")
        performSegue(withIdentifier: "BackMain", sender: self  )
        
    }
    

} //Main Class
