import UIKit

class FirstScreenViewController: UIViewController {

    @IBOutlet weak var fact1Label: UILabel!
    
    private let user = User.getUserInfo()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fact1Label.text = user.person.fact1

    }

}
