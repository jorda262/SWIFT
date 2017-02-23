import Cocoa

enum ShapeDimensions {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    case triangle(base: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        case let .triangle(base: b, height: h):
            return (1/2)*(b*h)
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
        case let .triangle(base: b, height: h):
            return (b + h + sqrt(pow(b, 2) + pow(h,2))).rounded()
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10)
var rectangleShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point
var triangleShape = ShapeDimensions.triangle(base: 11.0, height: 11.0)

print("The Square's area = \(squareShape.area())")
print("The Rectangle's area = \(rectangleShape.area())")
print("The Point's area = \(pointShape.area())")
print("The Point's area = \(triangleShape.area())")

print("The Square's perimeter = \(squareShape.perimeter())")
print("The Rectangle's area = \(rectangleShape.perimeter())")
print("The Point's area = \(pointShape.perimeter())")
print("The Point's area = \(triangleShape.perimeter())")
