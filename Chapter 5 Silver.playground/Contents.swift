//Simple program demonstrating the elegance of a switch with only one coniditon
import Cocoa

let age: Int = 25

if case 18...25 = age, age >= 21, age < 30{
    print("In cool demographic, of drinking age, and not in their thirties!")
}