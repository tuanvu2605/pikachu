//
//  GameScene.swift
//  Pikachu
//
//  Created by TuanAnh on 12/11/17.
//  Copyright © 2017 tuananh. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var level: Level!
    let gameLayer = SKNode()
    let pikachuLayer = SKNode()
    let tilesLayer = SKNode()
    
    let TileWidth: CGFloat = 32.0
    let TileHeight: CGFloat = 36.0
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder) is not used in this app")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        // Put an image on the background. Because the scene's anchorPoint is
        // (0.5, 0.5), the background image will always be centered on the screen.
        let background = SKSpriteNode(imageNamed: "Background")
        background.size = size
        addChild(background)
        addChild(gameLayer)
        
        let layerPosition = CGPoint(
            x: -TileWidth * CGFloat(NumColumns) / 2,
            y: -TileHeight * CGFloat(NumRows) / 2)
        tilesLayer.position = layerPosition
        gameLayer.addChild(tilesLayer)
        
        
        pikachuLayer.position = layerPosition
        gameLayer.addChild(pikachuLayer)
        
        
        
        
    }
    
    
    func addTiles() {
        for row in 0..<NumRows {
            for column in 0..<NumColumns {
                // If there is a tile at this position, then create a new tile
                // sprite and add it to the mask layer.
                if level.tileAt(column: column, row: row) != nil {
                    let tileNode = SKSpriteNode(imageNamed: "Tile")
                    tileNode.size = CGSize(width: TileWidth, height: TileHeight)
                    tileNode.position = pointFor(column: column, row: row)
                    tilesLayer.addChild(tileNode)
                }
            }
        }
    }
    
    
    func pointFor(column: Int, row: Int) -> CGPoint {
        return CGPoint(
            x: CGFloat(column)*TileWidth + TileWidth/2,
            y: CGFloat(row)*TileHeight + TileHeight/2)
    }
    
    
    
    
}
