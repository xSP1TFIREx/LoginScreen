import UIKit

class MainTabBarViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    private let user = User.getUserInfo()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameLabel.text = user.person.firstName
        lastnameLabel.text = user.person.lastName
        ageLabel.text = String(user.person.age)
        birthdayLabel.text = user.person.birthday
        bioLabel.text = user.person.bio

    }

    @IBAction func backButtonPressed() {
        dismiss(animated: true)
    }
}
