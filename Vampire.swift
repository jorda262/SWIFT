//
//  Vampire.swift
//  MonsterTown
//
//  Created by Michael Jordan on 2/23/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

class Vampire: Monster {
    
    static var thralls = [Vampire]()
    
    override func terrorizeTown() {
        if ((town?.population)! > 1) {
            town?.changePopulation(by: -1)
        }
        Vampire.thralls.append(self)
        super.terrorizeTown()
        
    }
    
    func changeName(name: String) {
        self.name = name
    }
    
    func printVampireThralls() -> () {
        print("Vampire Thralls:")
        for vampire in Vampire.thralls {
            print(vampire.name)
        }
    }
}
