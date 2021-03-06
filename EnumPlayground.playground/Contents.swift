import UIKit

var str = "Hello, playground"
enum SocialNetwork: String, CaseIterable {
    case facebook = "Filled with Karens"
    case twitter  = "Despressed people"
    case linkedin = "Should be professional"
}

func shareImageOnSocialMedia(on network: SocialNetwork) {
    switch network {
    case .facebook:
        print("Share image on Facebook")
    case .twitter:
        print("Share image on Twitter")
    case .linkedin:
        print("Share image on Linkedin")
    }
}

func getPersonalOpinion(on network: SocialNetwork){
    print(network.rawValue)
}

for platform in SocialNetwork.allCases {
    print(platform)
}

enum SocialMediaPlatform {
    case youtube(subscribers: Int)
    case twitter(followers: Int)
    case facebook
    case instagram
}

func getSponsorshipEligibilty(for platform: SocialMediaPlatform){
    switch platform {
    case .twitter(let followers) where followers > 10000:
        print("Can use sponsored tweet")
    case .youtube(let subscribers) where subscribers > 25000:
        print("Can use sponsodred ads")
    case .facebook, .instagram, .twitter, .youtube:
        print("Nope, you can do nothing")
    }
}

func swapTwoValues<T>(_ a: inout T, _ b: inout T){
    let temp = a
    a = b
    b = temp
}

struct Stack<Element> {
    var elements = [Element]()
    mutating func push(_ item: Element) {
        self.elements.append(item)
    }
    mutating func pop() -> Element{
        return self.elements.removeLast()
    }
}
extension Stack {
    var topElement: Element? {
        return self.elements.isEmpty ? nil : self.elements[self.elements.count - 1]
    }
}


var myStack = Stack<String>()
myStack.push("Hello")
if let item = myStack.topElement {
    print(item)
}
