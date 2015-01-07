//
//  FloatingAnimationController.swift
//  animations
//
//  Created by Francisco Hui on 1/5/15.
//  Copyright (c) 2015 Francisco Hui. All rights reserved.
//

import UIKit

class FloatingAnimationController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func animateButtonisPressed(sender: AnyObject) {
        //loop from 0 to 5
        for i in 0...5{

            //creating a square
            let square = UIView()
            square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
            square.backgroundColor = UIColor.redColor()
            self.view.addSubview(square)
            
            //randomly create a value between 0.0 and 150.0
            let randomYoffset = CGFloat( arc4random_uniform(150))
            
            //set animation path with a bezier curve
            //for every y-value on the bezier curve
            //add the y offset so each animation
            //appears at a different y-position
            let path = UIBezierPath()
            path.moveToPoint(CGPoint(x: 16, y: 239 + randomYoffset))
            path.addCurveToPoint(CGPoint(x: 394, y: 239 + randomYoffset), controlPoint1: CGPoint(x: 136, y: 373 + randomYoffset), controlPoint2: CGPoint(x: 178, y: 110 + randomYoffset))

            //create the animation
            let anim = CAKeyframeAnimation(keyPath: "position")
            
            //set animation path
            anim.path = path.CGPath
            
            //set parameters for animation
            //set rotation parallel to point on the curve
            anim.rotationMode = kCAAnimationRotateAuto
            anim.repeatCount = Float.infinity
            anim.duration = Double(arc4random_uniform(40)+30)/10
            anim.timeOffset = Double(arc4random_uniform(290))
            
            //add animation to the squares 'layer' property; ?
            square.layer.addAnimation(anim, forKey: "animate position along path")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
