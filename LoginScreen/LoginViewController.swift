import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func loginButtonPressed() {
        
        
    }
    @IBAction func forgotUNPressed() {
        showAlert(withTitle: "Remainder", andMessage: "Your login is Anna")
        
    }
    @IBAction func forgotPassPressed() {
       showAlert(withTitle: "Remainder", andMessage: "Your password is anna1995")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let afterLoginVC = segue.destination as? AfterLoginViewController else { return }
//        afterLoginVC.userName =
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
