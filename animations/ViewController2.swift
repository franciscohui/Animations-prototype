//
//  ViewController2.swift
//  animations
//
//  Created by Francisco Hui on 12/24/14.
//  Copyright (c) 2014 Francisco Hui. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set container frame and add to the screen
        self.container.frame = CGRect(x: 107, y: 107, width: 200, height: 200)
        self.view.addSubview(container)
        
        //set red square frame position
        //set blue frame position equal to red square
        self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.blueSquare.frame = redSquare.frame
        
        //set background colors
        self.redSquare.backgroundColor = UIColor.redColor()
        self.blueSquare.backgroundColor = UIColor.blueColor()
        
        //add red square
        self.container.addSubview(self.redSquare)
    }
    @IBAction func animateButtonTapped(sender: AnyObject) {
        
        //learning about 'tuple': multiple objects assigned to a single variable. how is it different than an array?
        let views = (frontView: self.redSquare, backView: self.blueSquare)
        
        //set a transition style
        let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
        
        UIView.transitionWithView(self.container, duration: 0.7, options: transitionOptions, animations: {
            
            //remove the front object
            views.frontView.removeFromSuperview()
            
            // ...then add the back object
            self.container.addSubview(views.backView)
            }, completion: { finished in
                // tbd
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
