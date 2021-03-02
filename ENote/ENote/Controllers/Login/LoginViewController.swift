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
    @IBOutlet weak var loginEmailStackView: UIStackView?
    @IBOutlet weak var loginPasswordStackView: UIStackView?
    
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
            if textField.text?.count == 0 {
                loginEmailStackView?.changeStackDefaultAppearenceWith(image: loginEmailIcon)
            } else {
                loginEmailStackView?.changeStackCustomAppearenceWith(image: loginEmailIcon)
            }
        } else if textField == loginPasswordTextField {
            if textField.text?.count == 0 {
                loginPasswordStackView?.changeStackDefaultAppearenceWith(image: loginPasswordIcon)
            } else {
                loginPasswordStackView?.changeStackCustomAppearenceWith(image: loginPasswordIcon)
            }
        }
    }
}
