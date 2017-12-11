//
//  Pokemon.swift
//  Pikachu
//
//  Created by TuanAnh on 12/11/17.
//  Copyright © 2017 tuananh. All rights reserved.
//

import SpriteKit

class Pokemon: NSObject {
    
    var column: Int
    var row: Int
    var sprite: SKSpriteNode?
    var avatar : String
    var id : Int
    init(id : Int , column: Int, row: Int, avatar : String)
    {
        self.column = column
        self.row = row
        self.avatar = avatar
        self.id = id
    }
    
    static func random()
    {
       
        
    }
    
    

}
