//
//  ViewController.swift
//  MVC正逆向
//
//  Created by student on 2018/12/18.
//  Copyright © 2018年 yx. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var stu = Student()
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        name.text = stu.name
        phone.text = stu.phone
    }

    @IBAction func showSecond(_ sender: Any) {
        stu.phone = phone.text!
        stu.name = name.text!
        
        let secVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        secVC.stu = stu
        //2
        //      secVC.delegate = self
        
        //      self.present(secVC, animated: true, completion: nil)
        self.navigationController?.pushViewController(secVC, animated: true)
    }
    @IBAction func showThird(_ sender: Any) {
        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdVC")
        self.present(thirdVC, animated: true, completion: nil)
    }
}

