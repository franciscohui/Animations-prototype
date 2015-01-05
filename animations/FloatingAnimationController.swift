//
//  FloatingAnimationController.swift
//  animations
//
//  Created by Francisco Hui on 1/5/15.
//  Copyright (c) 2015 Francisco Hui. All rights reserved.
//

import UIKit

class FloatingAnimationController: UIViewController {

    //create constants outside of the functions
    let fish2 = UIImageView()
    let fullRotation = CGFloat(M_PI * 2)
    let duration = 2.0
    let delay = 0.0
    let options = UIViewKeyframeAnimationOptions.CalculationModePaced
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //create and add fish illustration to the screen
        fish2.image = UIImage(named: "fish-illustration.png")
        fish2.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        self.view.addSubview(fish2)

    }
    //IBAction is a function outside of viewDidLoad
    //animation is inside the IBAction
    //if  let fish2 = UIImageView() is inside the viewDidLoad() function, 
    //    then the animation won't have access to the constant
    @IBAction func animateButtonisPressed(sender: AnyObject) {
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: {
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.fish2.transform = CGAffineTransformMakeRotation(1/3 * self.fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.fish2.transform = CGAffineTransformMakeRotation(2/3 * self.fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0, animations: {
                self.fish2.transform = CGAffineTransformMakeRotation(3/3 * self.fullRotation)
            })
            
            }, completion: {finished in
                
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
