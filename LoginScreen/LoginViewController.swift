import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let login = "Anna"
    private let password = "anna2022"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
//    MARK: - Prepare function
//    Подготовка данных к переносу
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = loginTF.text ?? ""
    }
        
//    MARK: - Clearing fields
//    Функция очистки полей
    private func clearFields() {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
//    MARK: - Clearing Password field
    private func clearPassField() {
        passwordTF.text = ""
    }
    
//    MARK: - Buttons Action
//    Нажатие кнопки логин
    @IBAction func loginButtonPressed() {
        loginTF.text == login && passwordTF.text == password ?
        performSegue(withIdentifier: "GoToNextScreen", sender: self) :
        showAlert(withTitle: "Error", andMessage: "Wrong username or password"); clearPassField()
    }
    
//    Нажатие кнопки забыл логин
    @IBAction func forgotUNPressed() {
        showAlert(withTitle: "Reminder", andMessage: "Your login is Anna")
    }
    
//    Нажатие кнопки забыл пароль
    @IBAction func forgotPassPressed() {
        showAlert(withTitle: "Reminder", andMessage: "Your password is anna2022")
    }
    
//    MARK: - Unwind
//    "Перемотка" - набор действий при возврате к начальному экрану
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let _ = segue.source as? WelcomeViewController
        clearFields()
    }
}

//MARK: - AlertController
//      Функция вывода на экран предупреждения
extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
    }
}

//MARK: - Hide Keyboard
// Функция для скрытия экранной клавиатуры
extension LoginViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
