import UIKit

class SecondScreenViewController: UIViewController {

    @IBOutlet weak var fact2Label: UILabel!
    
    private let user = User.getUserInfo()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fact2Label.text = user.person.fact2
        
    }

}
