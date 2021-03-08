import UIKit

protocol ButtonDelegate: AnyObject {
    func onButtonTap(sender: UIButton)
}
 
class ViewWithTextAndButton: UIView {
    
    // keeping track of the delegate to use later
    var delegate: ButtonDelegate?
    
    func onButtonTap(sender: UIButton) {
        delegate?.onButtonTap(sender: sender)
    }
}
 
class MyViewController: UIViewController, ButtonDelegate {
    
    let viewWithTextAndButton = ViewWithTextAndButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // assigning the delegate
        viewWithTextAndButton.delegate = self
        view.addSubview(viewWithTextAndButton)
    }
    
    func onButtonTap(sender: UIButton) {
        print("This button was clicked in the subview!")
    }
 
    deinit {
        print("ViewController deallocated")
    }
}

var myVC: MyViewController? = MyViewController()
myVC?.viewDidLoad()
myVC = nil
