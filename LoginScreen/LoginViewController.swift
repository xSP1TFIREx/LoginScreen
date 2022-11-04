import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButtonPressed() {
        loginTF.text == "Anna" && passwordTF.text == "anna1995" ?
        performSegue(withIdentifier: "GoToNextScreen", sender: self) :
        showAlert(withTitle: "Error", andMessage: "Wrong username or password")
        
    }
    
    @IBAction func forgotUNPressed() {
        showAlert(withTitle: "Reminder", andMessage: "Your login is Anna")
    }
    
    @IBAction func forgotPassPressed() {
        showAlert(withTitle: "Reminder", andMessage: "Your password is anna1995")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let afterLoginVC = segue.destination as? AfterLoginViewController else { return }
        afterLoginVC.userName = loginTF.text ?? ""
        afterLoginVC.view.backgroundColor = .yellow
    }
}

//MARK: - AlertController

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
    }
}
