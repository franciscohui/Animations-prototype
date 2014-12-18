// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let canvas = UIView()
canvas.frame = CGRectMake(0, 0, 320, 320)


let coloredSquare = UIView()
coloredSquare.backgroundColor = UIColor.blueColor()
coloredSquare.frame = CGRectMake(0, 120, 50, 50)

canvas.addSubview(coloredSquare)

UIView.animateWithDuration(0.5, animations: {
    coloredSquare.backgroundColor = UIColor.redColor()
    coloredSquare.frame = CGRectMake(320-50, 120, 50, 50)
})

canvas.addSubview(coloredSquare)