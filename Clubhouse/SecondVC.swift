import UIKit
import SnapKit

class SecondVC: UIViewController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
        navigationController?.delegate = self

    }

    func initialize() {
        view.backgroundColor = UIColor(named: "LightBrown")
    }
}
