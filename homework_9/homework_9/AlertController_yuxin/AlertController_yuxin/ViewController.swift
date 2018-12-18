//
//  ViewController.swift
//  AlertController_yuxin
//
//  Created by student on 2018/11/7.
//  Copyright © 2018年 9.3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "action sheet", message: "this is an action sheet", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Red", style: .destructive, handler: { (action) in print("destructive clicked")
            self.view.backgroundColor = UIColor.red
        }))
        alert.addAction(UIAlertAction(title: "Green", style: .cancel, handler: { (action) in print("cancel clicked")
            self.view.backgroundColor = UIColor.green}))
        alert.addAction(UIAlertAction(title: "Yellow", style: .default, handler: { (action) in print("ok clicked")
            self.view.backgroundColor = UIColor.yellow
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func login(_ sender: Any) {
        let alert = UIAlertController(title: "Login", message: "please input your personal information", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Login", style: .default, handler: { (action) in
            }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
        }))
        
        alert.addTextField { (textField) in
            textField.placeholder = "your user name?"
        }
        alert.addTextField { (textField) in
            textField.placeholder = "your password?"
            textField.isSecureTextEntry = true
        }
        
        present(alert, animated: true, completion: nil)
    }
}

