//
//  main.swift
//  MonsterTown
//
//  Created by Michael Jordan on 2/22/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.changePopulation(by: 500)
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

let countChocula = Vampire()
let dracula = Vampire()
countChocula.town = myTown
dracula.town = myTown
countChocula.terrorizeTown()
countChocula.town?.printDescription()
countChocula.printVampireThralls()
dracula.terrorizeTown()
dracula.town?.printDescription()
dracula.printVampireThralls()

print(Zombie.makeSpookyNoise())
