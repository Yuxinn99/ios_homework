//
//  SecondViewController.swift
//  MVC正逆向
//
//  Created by student on 2018/12/18.
//  Copyright © 2018年 yx. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var stu:Student!
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phone.text = stu.phone
        name.text = stu.name
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        stu.phone = phone.text!
        stu.name = name.text!
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
