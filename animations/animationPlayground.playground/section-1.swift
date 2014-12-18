// Playground - noun: a place where people can play

import Cocoa
import UIkit

var str = "Hello, playground"


let coloredSquare = UIView()
coloredSquare.backgroundColor = UIColor.blueColor()
coloredSquare.frame = CGRectMake(0, 120, 50, 50)
self.view.addSubview(coloredSquare)

UIView.animateWithDuration(0.5, animations: {
    coloredSquare.backgroundColor = UIColor.redColor()
    coloredSquare.frame = CGRectMake(320-50, 120, 50, 50)
    
})