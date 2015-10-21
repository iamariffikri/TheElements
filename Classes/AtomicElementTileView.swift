//
//  AtomicElementTileView.swift
//  TheElements
//
//  Created by Arif Fikri Abas on 17/10/2015.
//
//

import Foundation

extension AtomicElementTileView
{
    ///Draw element background
    func drawBackroundWithBaseColor(strokeColor: UIColor, rectangleSize: CGRect )
    {
        let lineWidth = CGFloat(2.3)
        let cornerRadius = CGFloat(6.0)
        let tileRectangle = rectangleSize.insetBy(dx: lineWidth/2.0, dy: lineWidth/2.0)
        
        //Stroke Drawing
        let strokePath = UIBezierPath(roundedRect: tileRectangle, cornerRadius: cornerRadius)
        strokeColor.setStroke()
        strokePath.lineWidth = lineWidth
        strokePath.stroke()
    }

}