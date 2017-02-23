//
//  Town.swift
//  MonsterTown
//
//  Created by Michael Jordan on 2/22/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

struct Town {
    var population = 5_422
    var numberOfStoplights = 4
    
    func printDescription() {
        print("Population: \(myTown.population), number of stoplights: \(myTown.numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
