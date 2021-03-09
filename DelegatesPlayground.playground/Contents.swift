import UIKit

struct Cookie {
    var size: Int = 5
    var hasChocolateChips: Bool = false
}

protocol BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie)
}

class Bakery {
    
    var delegate: BakeryDelegate?
    
    func makeCookie(){
        var cookie = Cookie()
        cookie.size = 7
        cookie.hasChocolateChips = true
        
        delegate?.cookieWasBaked(cookie)
    }
}

class CookieShop: BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie) {
        print("Cookie is ready! \(cookie.hasChocolateChips ? "And it has chocolate chips!" : "It doesn't contain chips")")
    }
}

let shop = CookieShop()
let bakery = Bakery()
bakery.delegate = shop

bakery.makeCookie()




// Tests:
class MyClass {
    var number: Int = 5
    
    deinit {
        print("Dying")
    }
}
class Property {
    weak var myClass: MyClass?
    var myStruct: MyStruct
    init(_ myClass: MyClass){
        self.myClass  = myClass
        self.myStruct = MyStruct()
    }
}
struct MyStruct {
    var number: Int = 5
}

var var1: MyClass? = MyClass()
var prop = Property(var1!)
var1 = nil
print(prop.myClass?.number ?? "Oh uh")
var var2 = var1
var1?.number = 10
var1 = nil
var2 = nil
print(var2?.number)

var stru1 = MyStruct()
var stru2 = stru1
stru1.number = 10
print(stru2.number)


var stepSize = 1

func increment(_ number: inout Int) {
    number += stepSize
}

increment(&stepSize)

var completionHandlers = [() -> Void]()
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
