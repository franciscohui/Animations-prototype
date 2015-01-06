//
//  FloatingAnimationController.swift
//  animations
//
//  Created by Francisco Hui on 1/5/15.
//  Copyright (c) 2015 Francisco Hui. All rights reserved.
//

import UIKit

class FloatingAnimationController: UIViewController {
    let square = UIView()
    let path = UIBezierPath()
    let anim = CAKeyframeAnimation(keyPath: "position")
    override func viewDidLoad() {
        super.viewDidLoad()
        //add square to the screen
        square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
        square.backgroundColor = UIColor.redColor()
        self.view.addSubview(square)
    }
    @IBAction func animateButtonisPressed(sender: AnyObject) {
        //using a UIBezierPath then building the CGPath out of the UIBezierPath
        path.moveToPoint(CGPoint(x: 16, y: 239))
        path.addCurveToPoint(CGPoint(x: 301, y: 239), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
        
        //set animation path
        anim.path = path.CGPath
        
        //set parameters for animation
        //set rotation parallel to point on the curve
        anim.rotationMode = kCAAnimationRotateAuto
        anim.repeatCount = Float.infinity
        anim.duration = 5.0
        
        //add animation to the squares 'layer' property; ?
        square.layer.addAnimation(anim, forKey: "animate position along path")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
