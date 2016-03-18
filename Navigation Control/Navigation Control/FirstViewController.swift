//
//  ViewController.swift
//  Navigation Control
//
//  Created by Sekai Lab BD on 3/16/16.
//  Copyright © 2016 Sekai Lab BD. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var data1: String? = "ON"
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var btn1: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let data = data1 {
            if data == "ON" {
                switch1.setOn(true, animated: true)
            } else {
                switch1.setOn(false, animated: true)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender === btn1 {
            if(switch1.on) {
                (segue.destinationViewController as! SecondViewController).data2 = "ON"
            } else {
                (segue.destinationViewController as! SecondViewController).data2 = "OFF"
            }
        }
    }
    @IBAction func returnToParent(sender: UIStoryboardSegue) {
        if (sender.sourceViewController as! SecondViewController).data2 == "ON" {
            switch1.setOn(true, animated: true)
        }
        else {
            switch1.setOn(false, animated: true)
        }
    }
    
    


}

