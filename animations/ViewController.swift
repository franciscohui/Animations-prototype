//
//  ViewController.swift
//  animations
//
//  Created by Francisco Hui on 12/11/14.
//  Copyright (c) 2014 Francisco Hui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func animateButtonPressed(sender: AnyObject) {
        
        //loop for 10 times
        for loopNumber in 0...10{

            //constants for animation
            let duration: NSTimeInterval = 1.0
            let delay = NSTimeInterval( ((CGFloat(rand()) % 900)+100.0) / 1000.0)
            let options = UIViewAnimationOptions.CurveLinear
            
            //constants for object size and positions
            let size : CGFloat = CGFloat( CGFloat(rand()) %  40 + 20.0)
            let yPosition: CGFloat = CGFloat(CGFloat(rand()) % 600 + 10.0)
            
            //create objects and add it to the screen
            let coloredSquare = UIView()
            coloredSquare.backgroundColor = UIColor.blueColor()
            coloredSquare.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(coloredSquare)
            
            // How to dynamically measure the width of the device and apply it to the animation?
            // Clues:
            //      CGRect screenRect = [[UIScreen mainScreen] bounds];
            //      CGFloat screenWidth = screenRect.size.width;
            //      CGFloat screenHeight = screenRect.size.height;
            
            
            //defining the animation
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                coloredSquare.backgroundColor = UIColor.redColor()
                
                //replace constants in the frame, ie. size and yPosition
                coloredSquare.frame = CGRectMake(414, yPosition, size, size)
                }, completion: { animationFinished in
                    coloredSquare.removeFromSuperview()
            })
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

