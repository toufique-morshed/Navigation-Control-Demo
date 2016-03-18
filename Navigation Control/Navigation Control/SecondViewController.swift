//
//  SecondViewController.swift
//  Navigation Control
//
//  Created by Sekai Lab BD on 3/16/16.
//  Copyright © 2016 Sekai Lab BD. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var data2: String?
    @IBOutlet weak var switch2: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if data2! == "ON" {
            switch2.setOn(true, animated: true)
        } else {
            switch2.setOn(false, animated: true)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if switch2.on {
            data2 = "ON"
        }
        else {
            data2 = "OFF"
        }
        (segue.destinationViewController as! FirstViewController).data1 = self.data2
        
    }
    

}
