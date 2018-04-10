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
        UIColor.black.setFill()
        UIColor.red.setStroke()
        deathStarBody().fill()
        deathStarBody().stroke()
    }
    
    func deathStarBody() -> UIBezierPath {
        let center = CGRect(x: 100, y: 100, width: 400, height: 400)
        let path = UIBezierPath(ovalIn: bounds)
        return path
    }
 

}
