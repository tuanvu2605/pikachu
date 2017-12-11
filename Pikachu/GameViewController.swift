//
//  GameViewController.swift
//  Pikachu
//
//  Created by TuanAnh on 12/11/17.
//  Copyright © 2017 tuananh. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    
    var scene: GameScene!
    var level: Level!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as! SKView
        skView.isMultipleTouchEnabled = false
        
        // Create and configure the scene.
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        level = Level(filename: "Level_0")
        scene.level = level
        skView.presentScene(scene)
        
        scene.addTiles()
      
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
