import UIKit

class AfterLoginViewController: UIViewController {

    
    @IBOutlet weak var userNameLabel: UILabel!
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome back, \(userName)"

    }
    

    @IBAction func returnButtonPressed() {
        dismiss(animated: true)
    }
    
}
