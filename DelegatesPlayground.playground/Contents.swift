import UIKit

protocol BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie)
}

struct Cookie {
    var size: Int = 5
    var hasChocolateChips: Bool = false
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
