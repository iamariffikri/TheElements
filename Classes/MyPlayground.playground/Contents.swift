//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class IconView: UIView {
    override func drawRect(rect: CGRect) {
        drawBackroundWithBaseColor(UIColor.orangeColor(), rectangleSize: rect)
    }
}

///Draw element background
func drawBackroundWithBaseColor(strokeColor: UIColor, rectangleSize: CGRect )
{
    let lineWidth = CGFloat(6.0)
    let cornerRadius = CGFloat(20.0)
    let tileRectangle = rectangleSize.insetBy(dx: lineWidth/2.0, dy: lineWidth/2.0)
    
    //Stroke Drawing
    let strokePath = UIBezierPath(roundedRect: tileRectangle, cornerRadius: cornerRadius)
    strokeColor.setStroke()
    strokePath.lineWidth = lineWidth
    strokePath.stroke()
}

let rect = CGRect(x: 0, y: 0, width: 120.0, height: 120.0)
let iconView = IconView(frame: rect);
iconView.backgroundColor = UIColor.clearColor()
iconView
