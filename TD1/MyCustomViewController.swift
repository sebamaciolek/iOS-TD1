//
//  MyCustomViewController.swift
//  TD1
//
//  Created by MACIOLEK Sebastian on 03/01/2017.
//  Copyright © 2017 MACIOLEK Sebastian. All rights reserved.
//

import UIKit

class MyCustomViewController: UIViewController {
let button = UIButton()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        button.setTitle("Button", for: .normal)
        button.backgroundColor = UIColor.blue
        button.frame = CGRect(x:150, y:400, width:75, height:50)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonAction), for:.touchUpInside)
        
        
        label.text = "Label"
        label.frame = CGRect(x:150, y:300, width:75, height:50)
        self.view.addSubview(label)
    }
    
    func buttonAction(){
        let date = NSDate()
        let calendar = NSCalendar.current
        let hour = calendar.component(.hour, from: date as Date)
        let minutes = calendar.component(.minute, from: date as Date)
        
        let time = String(hour) + ":" + String(minutes)
        
        label.text = time
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
