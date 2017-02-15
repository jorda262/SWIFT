//Based on what you enter into the constant point you will end up with
//what quadrant the point is located on in the cartesian plane, or
//whether its on the x-axis, y-axis, or both (origin (0,0))
import Cocoa

let point = (x:1, y:1)

switch point {
    case let q1 where (point.x > 0) && (point.y > 0):
        print("\(q1) is in quadrant 1")
    
    case let q2 where (point.x < 0) && point.y > 0:
        print("\(q2) is in quadrant 2")
    
    case let q3 where (point.x < 0) && point.y < 0:
        print("\(q3) is in quadrant 3")
    
    case let q4 where (point.x > 0) && point.y < 0:
        print("\(q4) is in quadrant 4")
    
    case(_,0):
        print("\(point) sits on the x-axis")
        fallthrough
    case(0,_):
        print("\(point) sits on the y-axis")
    
    default:
        print("Case not covered")
    
}
