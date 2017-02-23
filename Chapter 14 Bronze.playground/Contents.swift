import Cocoa

enum ShapeDimensions {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side:side):
            return 4 * side
        case let .rectangle(width: w, height: h):
            return (2*w + 2*h)
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10)
var rectangleShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point

print("The Square's area = \(squareShape.area())")
print("The Rectangle's area = \(rectangleShape.area())")
print("The Point's area = \(pointShape.area())")

print("The Square's perimeter = \(squareShape.perimeter())")
print("The Rectangle's area = \(rectangleShape.perimeter())")
print("The Point's area = \(pointShape.perimeter())")