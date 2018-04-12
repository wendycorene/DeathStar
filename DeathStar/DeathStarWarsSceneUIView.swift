//
//  DeathStarWarsSceneUIView.swift
//  DeathStar
//
//  Created by Eloe,Wendy C on 4/10/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import UIKit

class DeathStarWarsSceneUIView: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        let background = UIImage(named: "alderaan")
        background?.draw(in: rect)
        
        UIColor.black.setFill()
        UIColor.red.setStroke()
        let (deathStarBody, deathStarPort) = deathStar()
        deathStarBody.fill()
        deathStarBody.stroke()
        UIColor.gray.setFill()
        deathStarPort.fill()
        deathStarPort.stroke()
        
        let rotate = CGAffineTransform(rotationAngle: .pi/8.0)
        let move = CGAffineTransform(translationX: 100, y: 100)
        let tran = move.concatenating(rotate)
        deathStarBody.apply(tran)
        deathStarPort.apply(tran)
        
        UIColor.black.setFill()
        UIColor.red.setStroke()
        deathStarBody.fill()
        deathStarBody.stroke()
        UIColor.gray.setFill()
        deathStarPort.fill()
        deathStarPort.stroke()

    }
    
    func deathStar() -> (UIBezierPath, UIBezierPath) {
        let bounds = CGRect(x: 50, y: 50, width: 200, height: 200)
        let pathBody = UIBezierPath(ovalIn: bounds)
        let portx = bounds.minX + bounds.width/5
        let porty = bounds.minY + bounds.height/7
        let portWidth = bounds.width/3
        let portHeight = bounds.height/3
        let portBounds = CGRect(x: portx, y: porty, width: portWidth, height: portHeight)
        let pathPort = UIBezierPath(ovalIn: portBounds)
        return (pathBody, pathPort)
    }
    

 

}
