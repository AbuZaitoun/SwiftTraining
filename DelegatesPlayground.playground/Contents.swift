import UIKit

protocol BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie)
}

struct Cookie {
    var size: Int = 5
    var hasChocolateChips: Bool = false
}

class Bakery {
    func makeCookie(){
        var cookie = Cookie()
    }
}
