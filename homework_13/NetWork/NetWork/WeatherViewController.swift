//
//  WeatherViewController.swift
//  NetWork
//
//  Created by student on 2018/12/17.
//  Copyright © 2018年 yx. All rights reserved.
//

import UIKit

class WeatherViewController: UITableViewController {

    var weather:[String:String]?
    
    @IBOutlet weak var low: UILabel!
    
    @IBOutlet weak var high: UILabel!
    @IBOutlet weak var wea: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        high.text = weather?["temp1"]
        low.text = weather?["temp2"]
        wea.text = weather?["weather"]
        // Do any additional setup after loading the view.
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
