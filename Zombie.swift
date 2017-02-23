//
//  Zombie.swift
//  MonsterTown
//
//  Created by Michael Jordan on 2/23/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        if ((town?.population)! <= 10) {
            town?.population = 0
        } else {
            town?.changePopulation(by: -10)
        }
        super.terrorizeTown()
    }
    
    static func makeSpookyNoise() -> String {
        return "Brains..."
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}
