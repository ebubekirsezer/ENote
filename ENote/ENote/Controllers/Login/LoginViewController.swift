//
//  LoginViewController.swift
//  ENote
//
//  Created by Ebubekir Sezer on 28.02.2021.
//

import UIKit


class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginEmailTextField: UITextField?
    @IBOutlet weak var loginEmailIcon: UIImageView?
    @IBOutlet weak var loginPasswordTextField: UITextField?
    @IBOutlet weak var loginPasswordIcon: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTarget()
    }
    
    private func setupTarget(){
        loginEmailTextField?.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        loginPasswordTextField?.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc private func textFieldDidChange(_ textField: UITextField){
        if textField == loginEmailTextField {
            print("email")
        } else if textField == loginPasswordTextField {
            print("password")
        }
    }
}
