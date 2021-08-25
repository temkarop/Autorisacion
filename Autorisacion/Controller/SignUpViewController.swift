//
//  ViewController.swift
//  Autorisacion
//
//  Created by Артем Ропавка on 23.08.2021.
//

import UIKit

class SignUpViewController: UIViewController {

    private var user: Variable!
    
    private let titleSignUp = UILabel()
    private let subTitle = UILabel()
    private let mailTitle = UILabel()
    private let passwordTitle = UILabel()
    private let phoneTitle = UILabel()
    private let endTitle = UILabel()
    
    private let imageMain = UIImage(named: "main image")
    private let imageMail = UIImage(named: "mail image")
    private let imagePhone = UIImage(named: "phone image")
    
    private let mailTextField = UITextField()
    private let passwordTextField = UITextField()
    private let phoneTextField = UITextField()
    
    private let signUpButton = UIButton()
    private let signUpLabelButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.backgroundColor = .white
        updateUI()
    }
    
    private func updateUI() {
        
        
        titleSignUp.text = "Sign Up"
        titleSignUp.font = UIFont(name: "Segoe UI", size: 30.0)
        titleSignUp.textColor = #colorLiteral(red: 0.2549019608, green: 0.3529411765, blue: 0.3764705882, alpha: 1)
        self.view.addSubview(titleSignUp)
        
        
        subTitle.text = "Fill the details & create your accoint"
        subTitle.font = UIFont(name: "Segoe UI", size: 16.0)
        subTitle.textColor = #colorLiteral(red: 0.2549019608, green: 0.3529411765, blue: 0.3764705882, alpha: 1)
        self.view.addSubview(subTitle)
        
        
        mailTitle.text = "Mail"
        mailTitle.font = UIFont(name: "Segoe UI", size: 12.0)
        mailTitle.textColor = #colorLiteral(red: 0.6470588235, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
        self.view.addSubview(mailTitle)
        
        
        passwordTitle.text = "Password"
        passwordTitle.font = UIFont(name: "Segoe UI", size: 12.0)
        passwordTitle.textColor = #colorLiteral(red: 0.6470588235, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
        self.view.addSubview(passwordTitle)
        
        
        phoneTitle.text = "Your phone"
        phoneTitle.font = UIFont(name: "Segoe UI", size: 12.0)
        phoneTitle.textColor = #colorLiteral(red: 0.6470588235, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
        self.view.addSubview(phoneTitle)
        
        
        endTitle.text = "Don't have an account?"
        endTitle.font = UIFont(name: "Segoe UI", size: 16.0)
        endTitle.textColor = #colorLiteral(red: 0.6470588235, green: 0.6588235294, blue: 0.6588235294, alpha: 1)
        self.view.addSubview(endTitle)
        
        
        let mainImage = UIImageView(image: imageMain)
        view.addSubview(mainImage)
        
        let mailImage = UIImageView(image: imageMail)
        view.addSubview(mailImage)
        
        let passwordImage = UIImageView(image: imageMail)
        view.addSubview(passwordImage)
        
        let phoneImage = UIImageView(image: imagePhone)
        view.addSubview(phoneImage)
        
        mailTextField.delegate = self
        mailTextField.text = "Write your email"
        mailTextField.textColor = #colorLiteral(red: 0.2509803922, green: 0.3098039216, blue: 0.4274509804, alpha: 1)
        mailTextField.font = UIFont(name: "Segoe UI Bold", size: 16.0)
        addDoneButtonTo(mailTextField)
        view.addSubview(mailTextField)
        
        passwordTextField.delegate = self
        passwordTextField.text = "Write your password"
        passwordTextField.textColor = #colorLiteral(red: 0.2509803922, green: 0.3098039216, blue: 0.4274509804, alpha: 1)
        passwordTextField.font = UIFont(name: "Segoe UI Bold", size: 16.0)
        passwordTextField.isSecureTextEntry = true
        addDoneButtonTo(passwordTextField)
        view.addSubview(passwordTextField)
        
        phoneTextField.delegate = self
        phoneTextField.text = "Write your phone"
        phoneTextField.textColor = #colorLiteral(red: 0.2509803922, green: 0.3098039216, blue: 0.4274509804, alpha: 1)
        phoneTextField.font = UIFont(name: "Segoe UI Bold", size: 16.0)
        addDoneButtonTo(phoneTextField)
        view.addSubview(phoneTextField)
        
        
        signUpButton.backgroundColor = #colorLiteral(red: 1, green: 0.2431372549, blue: 0.1843137255, alpha: 1)
        signUpButton.layer.cornerRadius = 10
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(signUpButton)
        
        
        signUpLabelButton.setTitle("Sign up", for: .normal)
        signUpLabelButton.setTitleColor(#colorLiteral(red: 0.1764705882, green: 0.2980392157, blue: 0.662745098, alpha: 1), for: .normal)
        signUpLabelButton.addTarget(self, action: #selector(buttonActionTwo), for: .touchUpInside)
        view.addSubview(signUpLabelButton)
        
        
        titleSignUp.translatesAutoresizingMaskIntoConstraints = false
    
        let titleSignUpTopConstraint = NSLayoutConstraint(item: titleSignUp, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.lessThanOrEqual, toItem: view, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 40)
        self.view.addConstraint(titleSignUpTopConstraint)
        
        let titleSignUpCenterConstraint = NSLayoutConstraint(item: titleSignUp, attribute: NSLayoutConstraint.Attribute.centerXWithinMargins, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerXWithinMargins, multiplier: 1.0, constant: 0)
        self.view.addConstraint(titleSignUpCenterConstraint)
        
        
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let subTitleTopConstraint = NSLayoutConstraint(item: subTitle, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: titleSignUp, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 25)
        self.view.addConstraint(subTitleTopConstraint)
        
        let subTitleCenterConstraint = NSLayoutConstraint(item: subTitle, attribute: NSLayoutConstraint.Attribute.centerXWithinMargins, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerXWithinMargins, multiplier: 1.0, constant: 0)
        self.view.addConstraint(subTitleCenterConstraint)
        
        
        mailTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let mailTitleTopConstraint = NSLayoutConstraint(item: mailTitle, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: mainImage, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 25)
        self.view.addConstraint(mailTitleTopConstraint)
        
        let mailTitleLeftConstraint = NSLayoutConstraint(item: mailTitle, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: mailImage, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 40)
        self.view.addConstraint(mailTitleLeftConstraint)
        
        
        
        passwordTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let passwordTitleTopConstraint = NSLayoutConstraint(item: passwordTitle, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: mailTextField, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 16)
        self.view.addConstraint(passwordTitleTopConstraint)
        
        let passwordTitleLeftConstraint = NSLayoutConstraint(item: passwordTitle, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: passwordImage, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 40)
        self.view.addConstraint(passwordTitleLeftConstraint)
        
        
        phoneTitle.translatesAutoresizingMaskIntoConstraints = false
        
        let phoneTitleTopConstraint = NSLayoutConstraint(item: phoneTitle, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: passwordTextField, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 16)
        self.view.addConstraint(phoneTitleTopConstraint)
        
        let phoneTitleLeftConstraint = NSLayoutConstraint(item: phoneTitle, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: phoneImage, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 40)
        self.view.addConstraint(phoneTitleLeftConstraint)
        
        
        endTitle.translatesAutoresizingMaskIntoConstraints = false
    
        let endTitleTopConstraint = NSLayoutConstraint(item: endTitle, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: signUpButton, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 50)
        self.view.addConstraint(endTitleTopConstraint)
        
        let endTitleCenterConstraint = NSLayoutConstraint(item: endTitle, attribute: NSLayoutConstraint.Attribute.centerXWithinMargins, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerXWithinMargins, multiplier: 1.0, constant: -30)
        self.view.addConstraint(endTitleCenterConstraint)
        
        
        mainImage.translatesAutoresizingMaskIntoConstraints = false
        
        let mainImageTopConstraint = NSLayoutConstraint(item: mainImage, attribute: NSLayoutConstraint.Attribute.firstBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: subTitle, attribute: NSLayoutConstraint.Attribute.firstBaseline, multiplier: 1.0, constant: 25)
        self.view.addConstraint(mainImageTopConstraint)
        
        let mainImageCenterConstraint = NSLayoutConstraint(item: mainImage, attribute: NSLayoutConstraint.Attribute.centerXWithinMargins, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerXWithinMargins, multiplier: 1.0, constant: 0)
        self.view.addConstraint(mainImageCenterConstraint)
        
        
        mailImage.translatesAutoresizingMaskIntoConstraints = false
        
        let mailImageTopConstraint = NSLayoutConstraint(item: mailImage, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: mainImage, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 40)
        self.view.addConstraint(mailImageTopConstraint)
        
        let mailImageLeftConstraint = NSLayoutConstraint(item: mailImage, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 19)
        self.view.addConstraint(mailImageLeftConstraint)
        
        
        passwordImage.translatesAutoresizingMaskIntoConstraints = false
        
        let passwordImageTopConstraint = NSLayoutConstraint(item: passwordImage, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: mailImage, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 40)
        self.view.addConstraint(passwordImageTopConstraint)
        
        let passwordImageLeftConstraint = NSLayoutConstraint(item: passwordImage, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 19)
        self.view.addConstraint(passwordImageLeftConstraint)
        
        
        phoneImage.translatesAutoresizingMaskIntoConstraints = false
        
        let phoneImageTopConstraint = NSLayoutConstraint(item: phoneImage, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: passwordImage, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 40)
        self.view.addConstraint(phoneImageTopConstraint)
        
        let phoneImageLeftConstraint = NSLayoutConstraint(item: phoneImage, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 19)
        self.view.addConstraint(phoneImageLeftConstraint)
        
        
        mailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let mailTextFieldTopConstraint = NSLayoutConstraint(item: mailTextField, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: mailTitle, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 20)
        self.view.addConstraint(mailTextFieldTopConstraint)
        
        let mailTextFieldLeftConstraint = NSLayoutConstraint(item: mailTextField, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: mailImage, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 40)
        self.view.addConstraint(mailTextFieldLeftConstraint)
        
        let mailTextFieldRightConstraint = NSLayoutConstraint(item: mailTextField, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 20)
        self.view.addConstraint(mailTextFieldRightConstraint)
        
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let passwprdTextFieldTopConstraint = NSLayoutConstraint(item: passwordTextField, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: passwordTitle, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 20)
        self.view.addConstraint(passwprdTextFieldTopConstraint)
        
        let passwprdTextFieldLeftConstraint = NSLayoutConstraint(item: passwordTextField, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: passwordImage, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 40)
        self.view.addConstraint(passwprdTextFieldLeftConstraint)
        
        let passwprdTextFieldRightConstraint = NSLayoutConstraint(item: passwordTextField, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 20)
        self.view.addConstraint(passwprdTextFieldRightConstraint)
        
        
        phoneTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let phoneTextFieldTopConstraint = NSLayoutConstraint(item: phoneTextField, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.equal, toItem: phoneTitle, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 20)
        self.view.addConstraint(phoneTextFieldTopConstraint)
        
        let phoneTextFieldLeftConstraint = NSLayoutConstraint(item: phoneTextField, attribute: NSLayoutConstraint.Attribute.left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: phoneImage, attribute: NSLayoutConstraint.Attribute.left, multiplier: 1.0, constant: 40)
        self.view.addConstraint(phoneTextFieldLeftConstraint)
        
        let phoneTextFieldRightConstraint = NSLayoutConstraint(item: phoneTextField, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 20)
        self.view.addConstraint(phoneTextFieldRightConstraint)
        
        
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        let signUpButtonTopConstraint = NSLayoutConstraint(item: signUpButton, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.lessThanOrEqual, toItem: phoneTextField, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 51.5)
        self.view.addConstraint(signUpButtonTopConstraint)
        
        let signUpButtonCenterConstraint = NSLayoutConstraint(item: signUpButton, attribute: NSLayoutConstraint.Attribute.centerXWithinMargins, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerXWithinMargins, multiplier: 1.0, constant: 0)
        self.view.addConstraint(signUpButtonCenterConstraint)
        
        let signUpButtonHeightConstraint = NSLayoutConstraint(item: signUpButton, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1.0, constant: 50)
        self.view.addConstraint(signUpButtonHeightConstraint)
        
        let signUpButtonWidthConstraint = NSLayoutConstraint(item: signUpButton, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1.0, constant: 259)
        self.view.addConstraint(signUpButtonWidthConstraint)
        
        
        signUpLabelButton.translatesAutoresizingMaskIntoConstraints = false
        
        let signUpLabelButtonTopConstraint = NSLayoutConstraint(item: signUpLabelButton, attribute: NSLayoutConstraint.Attribute.lastBaseline, relatedBy: NSLayoutConstraint.Relation.greaterThanOrEqual, toItem: signUpButton, attribute: NSLayoutConstraint.Attribute.lastBaseline, multiplier: 1.0, constant: 50)
        self.view.addConstraint(signUpLabelButtonTopConstraint)
        
        let signUpLabelButtonLeftConstraint = NSLayoutConstraint(item: signUpLabelButton, attribute: NSLayoutConstraint.Attribute.right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: endTitle, attribute: NSLayoutConstraint.Attribute.right, multiplier: 1.0, constant: 65)
        self.view.addConstraint(signUpLabelButtonLeftConstraint)
        
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
