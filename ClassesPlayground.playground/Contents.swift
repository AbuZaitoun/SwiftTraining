import UIKit

var str = "Hello, playground"
enum RefreshRate: Int {
    case TV = 30
    case monitor = 60
    case gamingMonitor = 144
    case superMonitor = 300
}
struct Bottle {
    var size: Int
    var luquidType: String
}
struct Resolution {
    var width: Int
    var height: Int
}

protocol DisplayProtocol {
    func showRed() -> (Int, Int, Int)
}

@propertyWrapper
class Display: DisplayProtocol {
    func showRed() -> (Int, Int, Int) {
        if (hasHDR ?? false) {
            return (1024, 0, 0)
        }
        return (255, 0, 0)
    }
    
    private var numberOfPorts: Int
    var resolution: Resolution
    var hasHDR: Bool? {
        willSet(newHRDValue){
            if newHRDValue! {
                print("Congrats, enjoy HDR!")
            }
        }
    }
    var refreshRate: RefreshRate?
    var pixelsPerInch: Double {
        get{
            Double(resolution.height) * Double(resolution.width) / 2000.0
        }
    }
    init(_ width:Int, _ height: Int) {
        self.resolution = Resolution(width: width, height: height)
        self.numberOfPorts = 1
    }
    var wrappedValue: Int {
        set{
            numberOfPorts = max(newValue, 1)
        }get{
            return numberOfPorts
        }
    }
}
class Monitor: Display {
    var manufacturer: String
    
    init(_ manufacturer: String, width: Int, height: Int) {
        self.manufacturer = manufacturer
        super.init(width, height)
    }
    init(_ manufacturer: String) {
        self.manufacturer = manufacturer
        super.init(0, 0)
    }
    convenience init(){
        self.init("TDB")
    }
}

struct Temperature {
    var tempInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        self.tempInCelsius = (fahrenheit + 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        self.tempInCelsius = (kelvin + 273.15)
    }
}
extension Monitor {
    func calibrate() -> Bool {
        if hasHDR ?? false {
            print("Calibrating...")
            return true
        } else {
            print("Can't calibrate non-HDR displays")
            return false
        }
    }
}
var myMainDisplay = Display(2560, 1440)
myMainDisplay.hasHDR = true
myMainDisplay.refreshRate = .gamingMonitor
print(myMainDisplay.pixelsPerInch)


class ShoppingCart {
    var person: Person?
    
    init(_ person: Person){
        self.person = person
    }
    
    deinit {
        print("Shopping cart is retiring")
    }
    
}

class Person {
    var shoppingCart: ShoppingCart?
    
    func setShoppingCart(_ cart: ShoppingCart){
        self.shoppingCart = cart
    }
    
    deinit {
        print("Person is about to die")
    }
    
    func saySomething() {
        print("Something")
    }
}
var me: Person?
me = Person()
var myCart: ShoppingCart?
myCart = ShoppingCart(me!)

me = nil
me?.saySomething()



class A {
    var number = 5
    init(){
        self.sayHello()
    }
    convenience init(someString: String){
        print(someString)
        self.init()
    }
    func sayHello() {
        print("Hello from A")
    }
}
class B: A {
    
}

var someBee = B(someString: "SDS")
var zero = 0


extension A {
    var someInt: Int {self.number * 10}
}


func `swapValues`<V>(_ value1: V, _ value2: V){
    
}

swapValues(4, 3)
