//
//  SpaceShip.swift
//  Fallback
//
//  Created by Ka-Chun Cheung on 10/10/15.
//  Copyright © 2015 Ka-Chun Cheung. All rights reserved.
//

import UIKit
import SpriteKit

class SpaceShip: SKSpriteNode {
    
    
    init(position : CGPoint) {
        let texture = SKTexture(imageNamed: "Spaceship")
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        super.xScale = 0.5
        self.yScale = 0.5
        self.position = position
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
