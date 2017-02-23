//
//  Monster.swift
//  MonsterTown
//
//  Created by Michael Jordan on 2/23/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

class Monster {
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
