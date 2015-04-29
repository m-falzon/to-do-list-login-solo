//
//  LoginViewControl.swift
//  ToDoListLoginSolo
//
//  Created by Matthew Falzon on 29/04/2015.
//  Copyright (c) 2015 Matthew Falzon. All rights reserved.
//

import Foundation

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        title = "ToDo App"
        
        activityIndicator.stopAnimating()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        switch(textField) {
        case emailTextField:
            emailTextField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
            
        case passwordTextField:
            passwordTextField.resignFirstResponder()
            // Login
            
        default:
            break
            
        }
        
        return true
    }
    
    @IBAction func onLoginButtonTapped(sender: AnyObject) {
        doLogin()
    }
    
    func doLogin() {
        activityIndicator.startAnimating()
        println("hello")
    }
    

}

