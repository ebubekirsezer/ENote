//
//  ViewController.swift
//  ENote
//
//  Created by Ebubekir Sezer on 12.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let homeVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        UIApplication.shared.windows.first?.rootViewController = homeVC
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }


}

