// Playground - noun: a place where people can play
//Evan Overschmidt, emovh8 Mobile App Dev Assignment 1

import UIKit

let mainView = CGRect(x:0.0, y:0.0, width:500.0, height:500.0)
let view = UIView(frame: mainView)

view.backgroundColor = UIColor (red: 240.0/255.0, green: 230.0/255.0, blue: 242.0/255.0, alpha: 1.0)

let subViewGreen = UIView(frame: CGRectZero)
subViewGreen.setTranslatesAutoresizingMaskIntoConstraints(false)
subViewGreen.backgroundColor = UIColor.greenColor()

view.addSubview(subViewGreen)

let subViewGreenTop = NSLayoutConstraint(item: subViewGreen, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 20.0)

let subViewGreenRight = NSLayoutConstraint(item: subViewGreen, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -16.0)

let subViewGreenLeft = NSLayoutConstraint(item: subViewGreen, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 16.0)

let subViewGreenBottom = NSLayoutConstraint(item: subViewGreen, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: -10.0)

var conArray1 = [subViewGreenTop, subViewGreenRight, subViewGreenLeft, subViewGreenBottom]

view.addConstraints(conArray1)
view.layoutIfNeeded()
view

//-----------------------------------\/ sub sub views \/--------------------------------------

let subViewBlue = UIView(frame: CGRectZero)
subViewBlue.setTranslatesAutoresizingMaskIntoConstraints(false)
subViewBlue.backgroundColor = UIColor.blueColor()

let subViewOrange = UIView(frame: CGRectZero)
subViewOrange.setTranslatesAutoresizingMaskIntoConstraints(false)
subViewOrange.backgroundColor = UIColor.orangeColor()

let subViewYellow = UIView(frame: CGRectZero)
subViewYellow.setTranslatesAutoresizingMaskIntoConstraints(false)
subViewYellow.backgroundColor = UIColor.yellowColor()

subViewGreen.addSubview(subViewBlue)
subViewGreen.addSubview(subViewOrange)
subViewGreen.addSubview(subViewYellow)

//Constraints---------------------------------------------

let subViewBlueTop = NSLayoutConstraint(item: subViewBlue, attribute: .Top, relatedBy: .Equal, toItem: subViewGreen, attribute: .Top, multiplier: 1.0, constant: 10.0)

let subViewBlueRight = NSLayoutConstraint(item: subViewBlue, attribute: .Right, relatedBy: .Equal, toItem: subViewOrange, attribute: .Left, multiplier: 1.0, constant: -6.0)

let subViewBlueLeft = NSLayoutConstraint(item: subViewBlue, attribute: .Left, relatedBy: .Equal, toItem: subViewGreen, attribute: .Left, multiplier: 1.0, constant: 10.0)

let subViewBlueBottom = NSLayoutConstraint(item: subViewBlue, attribute: .Bottom, relatedBy: .Equal, toItem: subViewGreen, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: -3.0)

//-----

let subViewOrangeTop = NSLayoutConstraint(item: subViewOrange, attribute: .Top, relatedBy: .Equal, toItem: subViewGreen, attribute: .Top, multiplier: 1.0, constant: 10.0)

let subViewOrangeRight = NSLayoutConstraint(item: subViewOrange, attribute: .Right, relatedBy: .Equal, toItem: subViewGreen, attribute: .Right, multiplier: 1.0, constant: -10.0)

let subViewOrangeLeft = NSLayoutConstraint(item: subViewOrange, attribute: .Left, relatedBy: .Equal, toItem: subViewGreen, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 3.0)

let subViewOrangeBottom = NSLayoutConstraint(item: subViewOrange, attribute: .Bottom, relatedBy: .Equal, toItem: subViewGreen, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: -3.0)

//------

let subViewYellowTop = NSLayoutConstraint(item: subViewYellow, attribute: .Top, relatedBy: .Equal, toItem: subViewGreen, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 3.0)

let subViewYellowRight = NSLayoutConstraint(item: subViewYellow, attribute: .Right, relatedBy: .Equal, toItem: subViewGreen, attribute: .Right, multiplier: 1.0, constant: -10.0)

let subViewYellowLeft = NSLayoutConstraint(item: subViewYellow, attribute: .Left, relatedBy: .Equal, toItem: subViewGreen, attribute: .Left, multiplier: 1.0, constant: 10.0)

let subViewYellowBottom = NSLayoutConstraint(item: subViewYellow, attribute: .Bottom, relatedBy: .Equal, toItem: subViewGreen, attribute: .Bottom, multiplier: 1.0, constant: -10.0)

var conArray2 = [subViewBlueTop, subViewBlueRight, subViewBlueLeft, subViewBlueBottom, subViewOrangeTop, subViewOrangeRight, subViewOrangeLeft, subViewOrangeBottom, subViewYellowTop, subViewYellowRight, subViewYellowLeft, subViewYellowBottom]

subViewGreen.addConstraints(conArray2)
subViewGreen.layoutIfNeeded()
subViewGreen
view


