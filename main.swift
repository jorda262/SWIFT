//
//  main.swift
//  MonsterTown
//
//  Created by Michael Jordan on 2/22/17.
//  Copyright © 2017 BigNerdRanch. All rights reserved.
//

import Foundation

var myTown = Town(population: 10_000, stoplights: 6)
myTown.printDescription()
let myTownSize = myTown.townSize
print(myTownSize)
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize)")
var fredTheZombie: Zombie? = Zombie(limp: true, fallingApart: true, town: myTown, monsterName: "Fred")
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()
print("Victim Pool: \(fredTheZombie?.victimPool)")
fredTheZombie?.victimPool = 500
print("Victim Pool: \(fredTheZombie?.victimPool); population: \(fredTheZombie?.town?.population)")


let countChocula = Vampire(town: myTown, monsterName: "Chocula")
let dracula = Vampire(town: myTown, monsterName: "Dracula")
countChocula.terrorizeTown() 
countChocula.town?.printDescription()
countChocula.printVampireThralls()
dracula.terrorizeTown()
dracula.town?.printDescription()
dracula.printVampireThralls()

print(Zombie.makeSpookyNoise())
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
fredTheZombie = nil
var convenientZombie = Zombie(limp: true, fallingApart: false)
