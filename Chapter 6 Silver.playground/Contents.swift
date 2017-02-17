import Cocoa

let mod3: String = "FIZZ"
let mod5: String = "BUZZ"
for i in 1...100 {
    if(i % 3 == 0 && i % 5 == 0){
        print("\(mod3) \(mod5)")
    }
    else if(i % 3 == 0)
    {
        print("\(mod3)")
    }
    else if(i % 5 == 0)
    {
        print("\(mod5)")
    }
    else{
        print("\(i)")
    }
}
