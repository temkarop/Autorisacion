//
//  ViewController.swift
//  Autorisacion
//
//  Created by Артем Ропавка on 23.08.2021.
//

import UIKit

class SignUpViewController: UIViewController {

    private var user: Variable!
    
    private let mailTextField = UITextField()
    private let passwordTextField = UITextField()
    private let phoneTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.backgroundColor = .white
        updateUI()
    }
    
    private func updateUI() {
        
        let titleSignUp = UILabel(frame: CGRect(x: 0, y: 70, width: 110, height: 40))
        titleSignUp.center.x = self.view.center.x
        titleSignUp.text = "Sign Up"
        titleSignUp.font = UIFont(name: "Segoe UI", size: 30.0)
        titleSignUp.textColor = #colorLiteral(red: 0.2549019608, green: 0.3529411765, blue: 0.3764705882, alpha: 1)
        self.view.addSubview(titleSignUp)
        
        let subTitle = UILabel(frame: CGRect(x: 0, y: 120, width: 311, height: 28))
        subTitle.center.x = self.view.center.x
        subTitle.textAlignment = .center
        subTitle.text = "Fill the details & create your accoint"
        subTitle.font = UIFont(name: "Segoe UI", size: 16.0)
        subTitle.textColor = #colorLiteral(red: 0.2549019608, green: 0.3529411765, blue: 0.3764705882, alpha: 1)
        self.view.addSubview(subTitle)

        let mailTitle = UILabel(frame: CGRect(x: 55, y: 447, width: 65, height: 16))
        mailTitle.text = "Mail"
        mailTitle.font = UIFont(name: "Segoe UI", size: 12.0)
        mailTitle.textColor = #colorLiteral(red: 0.6470588235, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
        self.view.addSubview(mailTitle)
        
        let passwordTitle = UILabel(frame: CGRect(x: 55, y: 507, width: 65, height: 16))
        passwordTitle.text = "Password"
        passwordTitle.font = UIFont(name: "Segoe UI", size: 12.0)
        passwordTitle.textColor = #colorLiteral(red: 0.6470588235, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
        self.view.addSubview(passwordTitle)

        let phoneTitle = UILabel(frame: CGRect(x: 55, y: 567, width: 65, height: 16))
        phoneTitle.text = "Your phone"
        phoneTitle.font = UIFont(name: "Segoe UI", size: 12.0)
        phoneTitle.textColor = #colorLiteral(red: 0.6470588235, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
        self.view.addSubview(phoneTitle)

        let endTitle = UILabel(frame: CGRect(x: 74, y: 741, width: 166, height: 21))
        endTitle.text = "Don't have an account?"
        endTitle.font = UIFont(name: "Segoe UI", size: 16.0)
        endTitle.textColor = #colorLiteral(red: 0.6470588235, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
        self.view.addSubview(endTitle)

        let imageMain = UIImage(named: "main image")
        let mainImage = UIImageView(image: imageMain)
        mainImage.frame = CGRect(x: 39, y: 171, width: 270, height: 248)
        view.addSubview(mainImage)
        
        let imageMail = UIImage(named: "mail image")
        let mailImage = UIImageView(image: imageMail)
        mailImage.frame = CGRect(x: 19, y: 455, width: 21, height: 21)
        view.addSubview(mailImage)

        let imagePassword = UIImage(named: "mail image")
        let passwordImage = UIImageView(image: imagePassword)
        passwordImage.frame = CGRect(x: 19, y: 515, width: 21, height: 21)
        view.addSubview(passwordImage)

        let imagePhone = UIImage(named: "phone image")
        let phoneImage = UIImageView(image: imagePhone)
        phoneImage.frame = CGRect(x: 22, y: 576, width: 15, height: 24)
        view.addSubview(phoneImage)

        mailTextField.frame = CGRect(x: 55, y: 447, width: 305, height: 44)
        mailTextField.delegate = self
        mailTextField.text = "Write your email"
        mailTextField.textColor = #colorLiteral(red: 0.2509803922, green: 0.3098039216, blue: 0.4274509804, alpha: 1)
        mailTextField.font = UIFont(name: "Segoe UI Bold", size: 16.0)
        addDoneButtonTo(mailTextField)
        view.addSubview(mailTextField)

        passwordTextField.frame = CGRect(x: 55, y: 507, width: 305, height: 44)
        passwordTextField.delegate = self
        passwordTextField.text = "Write your password"
        passwordTextField.textColor = #colorLiteral(red: 0.2509803922, green: 0.3098039216, blue: 0.4274509804, alpha: 1)
        passwordTextField.font = UIFont(name: "Segoe UI Bold", size: 16.0)
        passwordTextField.isSecureTextEntry = true
        addDoneButtonTo(passwordTextField)
        view.addSubview(passwordTextField)

        phoneTextField.frame = CGRect(x: 55, y: 567, width: 305, height: 44)
        phoneTextField.delegate = self
        phoneTextField.text = "Write your phone"
        phoneTextField.textColor = #colorLiteral(red: 0.2509803922, green: 0.3098039216, blue: 0.4274509804, alpha: 1)
        phoneTextField.font = UIFont(name: "Segoe UI Bold", size: 16.0)
        addDoneButtonTo(phoneTextField)
        view.addSubview(phoneTextField)

        let signUpButton = UIButton(frame: CGRect(x: 0, y: 662, width: 259, height: 50))
        signUpButton.backgroundColor = #colorLiteral(red: 1, green: 0.2431372549, blue: 0.1843137255, alpha: 1)
        signUpButton.center.x = self.view.center.x
        signUpButton.layer.cornerRadius = 10
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(signUpButton)

        let signUpLabelButton = UIButton(frame: CGRect(x: 245, y: 741, width: 65, height: 21))
        signUpLabelButton.setTitle("Sign up", for: .normal)
        signUpLabelButton.setTitleColor(#colorLiteral(red: 0.1764705882, green: 0.2980392157, blue: 0.662745098, alpha: 1), for: .normal)
        signUpLabelButton.addTarget(self, action: #selector(buttonActionTwo), for: .touchUpInside)
        view.addSubview(signUpLabelButton)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        signUp()
        
        print("mail: \(String(describing: mailTextField.text)) password: \(String(describing: passwordTextField.text)) phone\(String(describing: phoneTextField.text))")
        
    }
    
    @objc func buttonActionTwo(sender: UIButton!) {
        print("Button tapped")
    }
    private func verifyLoginPasswordFields() -> (mail: String, password: String, phone: String)? {
        
        guard let mail = mailTextField.text, !(mail.isEmpty) else {
            showAlert(withTitle: "Error",
                      message: "Email не может быть пустым",
                      buttonTitle: "OK",
                      handler: nil)
            return nil
        }
        
        guard let password = passwordTextField.text, !(password.isEmpty) else {
            showAlert(withTitle: "Error",
                      message: "Пароль не может быть пустым",
                      buttonTitle: "OK",
                      handler: nil)
            return nil
        }
        
        guard let phone = phoneTextField.text, !(phone.isEmpty) else {
            showAlert(withTitle: "Error",
                      message: "Телефон не может быть пустым",
                      buttonTitle: "OK",
                      handler: nil)
            return nil
        }
        return (mail: mail, password: password, phone: phone)
    }
    private func signUp() {
        
        let loginPassword =  verifyLoginPasswordFields()
       
        guard let mail = loginPassword?.mail else { return }
        guard let password = loginPassword?.password else { return }
        guard let phone = loginPassword?.phone else { return }
        
        user = Variable(mail: mail, password: password, phone: phone)
    }
}

extension SignUpViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
extension SignUpViewController {
    
    private func addDoneButtonTo(_ textField: UITextField) {
        
        let keyboardToolbar = UIToolbar()
        textField.inputAccessoryView = keyboardToolbar
        keyboardToolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title:"Done",
                                         style: .done,
                                         target: self,
                                         action: #selector(didTapDone))
        
        let flexBarButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                                            target: nil,
                                            action: nil)
        
        keyboardToolbar.items = [flexBarButton, doneButton]
    }
    
    @objc private func didTapDone() {
        view.endEditing(true)
    }
    private func showAlert(withTitle title: String, message: String, buttonTitle: String, handler: ((UIAlertAction) -> Void)?) {
        let alert = UIHelpers.showAlert(withTitle: title,
                                        message: message,
                                        buttonTitle: buttonTitle,
                                        handler: handler)
        present(alert, animated: true, completion: nil)
    }
}
