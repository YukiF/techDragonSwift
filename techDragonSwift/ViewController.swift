//
//  ViewController.swift
//  techDragonSwift
//
//  Created by Yuki.F on 2015/03/03.
//  Copyright (c) 2015年 Yuki Futagami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var hpBar : UIProgressView!
    @IBOutlet var attackLabel : UILabel!
    @IBOutlet var dragonImage : UIImageView!
    var hpPoint : Int = 100
    var attackPower : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        hpBar.progress = 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rasePowerBT() {
        
        attackPower = attackPower + 3;
        attackLabel.text = "\(attackPower)"
        
//        if attackPower >= 10 && attackPower < 30{
//            attackLabel.textColor = UIColor.blueColor()
//        }else if attackPower >= 30 && attackPower < 50{
//            attackLabel.textColor = UIColor.greenColor()
//        }else if attackPower >= 50{
//            attackLabel.textColor = UIColor.redColor()
//        }
        switch attackPower{
        case 12:
            attackLabel.textColor = UIColor.blueColor()
        case 30:
            attackLabel.textColor = UIColor.greenColor()
        case 51:
            attackLabel.textColor = UIColor.redColor()
        default:
            break
        }
        
    }
    
    @IBAction func attack(){
        hpPoint = hpPoint - attackPower
        if hpPoint <= 0{
            hpPoint = 0
            [self .clearAnimation()]
        }else{
            [self .dragonAnimation()]
        }
        var hpValue : Float!
        hpValue = Float(hpPoint)
        hpBar.progress = hpValue / 100
    }
    
    func dragonAnimation(){
        UIView.animateWithDuration(0.1, animations: {() -> Void in
            self.dragonImage.transform = CGAffineTransformMakeScale(0.9, 0.9)
            }, completion: {(Bool) -> Void in
                self.dragonImage.transform = CGAffineTransformMakeScale(1.0, 1.0)
        })
    }
    
    func clearAnimation(){
        UIView.animateWithDuration(0.7, animations: {() -> Void in
            self.dragonImage.alpha = 0.0
            }, completion: {(Bool) -> Void in
        })
    }
    
    @IBAction func reset(){
        hpPoint = 100
        hpBar.progress = 1.0
        attackPower = 0
        attackLabel.text = "\(attackPower)"
        attackLabel.textColor = UIColor.whiteColor()
        self.dragonImage.alpha = 1.0
    }
}






























