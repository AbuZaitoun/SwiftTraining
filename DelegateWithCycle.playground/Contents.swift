import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(_ toSend: String)
}

class Sender {
    weak var dalagate: SendDataDelegate?
    
    deinit {
        print("Sender is being deallocated")
    }
}

class Receiver: SendDataDelegate {
    func sendData(_ toSend: String) {
        print("Sending: \(toSend)")
    }
    
    lazy var sender: Sender = {
        let sender = Sender()
        sender.dalagate = self
        return sender
    }()
}

var receiver = Receiver()
receiver.sender
