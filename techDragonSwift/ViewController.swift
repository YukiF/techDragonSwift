//
//  ViewController.swift
//  techDragonSwift
//
//  Created by Yuki.F on 2015/03/03.
//  Copyright (c) 2015年 Yuki Futagami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var hpLabel : UILabel!
    @IBOutlet var attackLabel : UILabel!
    var hpPoint : Int = 100
    var attackPower : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func attackPowerBT() {
        
        attackPower = attackPower + 10;
        attackLabel.text = "\(attackPower)"
        
    }


}

