import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var userNameLabel: UILabel!
//    Переменная, которая будет содержать имя пользователя
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome back, \(userName)"

    }
    
//  Функционал кнопки возврата
    @IBAction func returnButtonPressed() {
        dismiss(animated: true)
    }
    
}
