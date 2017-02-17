import Cocoa
var bucketList = ["Climb Mt. Everest"]
var newItems = ["Fly hot air balloon to Fiji", "Watch the Lord of the Rings trilogy in one day", "Go on a walkabout", "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]

bucketList += newItems

bucketList.remove(at: 2)
print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += " in Australia"
bucketList[0] = "Climb Mt. Kilamanjaro"
bucketList.insert("Toboggan across Alaska", at: 2)

var spot = bucketList.index(of: "Fly hot air balloon to Fiji")

print(bucketList[1])

