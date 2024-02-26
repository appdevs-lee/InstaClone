//
//  LoginViewController.swift
//  InstaClone
//
//  Created by Awesomepia on 2/26/24.
//

import UIKit

final class LoginViewController: UIViewController {
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "InstaLoginLogo")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    lazy var idView: UIView = {
        let view = UIView()
        view.backgroundColor = .useRGB(red: 250, green: 250, blue: 250)
        view.layer.borderColor = UIColor.useRGB(red: 224, green: 224, blue: 224).cgColor
        view.layer.borderWidth = 1.0
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var idLabel: UILabel = {
        let label = UILabel()
        label.text = "Username, email or mobile number"
        label.font = .useFont(ofSize: 14, weight: .Regular)
        label.textColor = .useRGB(red: 0, green: 0, blue: 0, alpha: 0.2)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var idTextField: UITextField = {
        let textField = UITextField()
        textField.textColor = .useRGB(red: 38, green: 38, blue: 38)
        textField.font = .useFont(ofSize: 14, weight: .Medium)
        textField.borderStyle = .none
        textField.addLeftPadding()
        textField.backgroundColor = .clear
        textField.delegate = self
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    lazy var idButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(idButton(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var passwordView: UIView = {
        let view = UIView()
        view.backgroundColor = .useRGB(red: 250, green: 250, blue: 250)
        view.layer.borderColor = UIColor.useRGB(red: 224, green: 224, blue: 224).cgColor
        view.layer.borderWidth = 1.0
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = .useFont(ofSize: 14, weight: .Regular)
        label.textColor = .useRGB(red: 0, green: 0, blue: 0, alpha: 0.2)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var textFieldMaskButton: UIButton = {
        let button = UIButton()
        button.isHidden = true
        button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(textFieldMaskButton(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.isSecureTextEntry = true
        textField.textColor = .useRGB(red: 38, green: 38, blue: 38)
        textField.font = .useFont(ofSize: 14, weight: .Medium)
        textField.borderStyle = .none
        textField.addLeftPadding()
        textField.backgroundColor = .clear
        textField.delegate = self
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    lazy var passwordButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(passwordButton(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var findPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot password?", for: .normal)
        button.setTitleColor(.useRGB(red: 55, green: 151, blue: 239), for: .normal)
        button.setTitleColor(.useRGB(red: 55, green: 151, blue: 239, alpha: 0.6), for: .highlighted)
        button.titleLabel?.font = .useFont(ofSize: 12, weight: .Medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.isEnabled = false
        button.setBackgroundImage(UIImage(named: "LoginButton"), for: .normal)
        button.setBackgroundImage(UIImage(named: "SelectedLoginButton"), for: .highlighted)
        button.setBackgroundImage(UIImage(named: "SelectedLoginButton"), for: .disabled)
        button.addTarget(self, action: #selector(loginButton(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var facebookLoginButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(named: "FacebookLoginButton"), for: .normal)
        button.setBackgroundImage(UIImage(named: "HighlightedFacebookLoginButton"), for: .highlighted)
        button.addTarget(self, action: #selector(facebookLoginButton(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var borderImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "BorderImage")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    lazy var signUpLabel: UILabel = {
        let label = UILabel()
        label.text = "Don’t have an account? Sign up."
        label.textColor = .useRGB(red: 0, green: 0, blue: 0, alpha: 0.4)
        label.font = .useFont(ofSize: 14, weight: .Regular)
        label.asColor(targetString: "Sign up.", color: .useRGB(red: 55, green: 151, blue: 239))
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(signUpButton(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var borderView: UIView = {
        let view = UIView()
        view.backgroundColor = .useRGB(red: 0, green: 0, blue: 0, alpha: 0.2)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    lazy var companyLabel: UILabel = {
        let label = UILabel()
        label.text = "Instagram от Facebook"
        label.textColor = .useRGB(red: 0, green: 0, blue: 0, alpha: 0.4)
        label.font = .useFont(ofSize: 12, weight: .Regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var idLabelTopAnchorConstraint: NSLayoutConstraint!
    var passwordLabelTopAnchorConstraint: NSLayoutConstraint!
    var logoImageViewTopAnchorConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setViewFoundation()
        self.initializeObjects()
        self.setDelegates()
        self.setGestures()
        self.setNotificationCenters()
        self.setSubviews()
        self.setLayouts()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.setViewAfterTransition()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    deinit {
        print("----------------------------------- LoginViewController is disposed -----------------------------------")
    }
}

// MARK: Extension for essential methods
extension LoginViewController: EssentialViewMethods {
    func setViewFoundation() {
        ReferenceValues.firstVC = self
        
    }
    
    func initializeObjects() {
        
    }
    
    func setDelegates() {
        
    }
    
    func setGestures() {
        
    }
    
    func setNotificationCenters() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func setSubviews() {
        SupportingMethods.shared.addSubviews([
            self.logoImageView,
            self.idView,
            self.idTextField,
            self.idLabel,
            self.idButton,
            self.passwordView,
            self.passwordTextField,
            self.passwordLabel,
            self.passwordButton,
            self.textFieldMaskButton,
            self.findPasswordButton,
            self.loginButton,
            self.facebookLoginButton,
            self.borderImageView,
            self.signUpLabel,
            self.signUpButton,
            self.borderView,
            self.companyLabel
        ], to: self.view)
    }
    
    func setLayouts() {
        let safeArea = self.view.safeAreaLayoutGuide
        
        // logoImageView
        self.logoImageViewTopAnchorConstraint = self.logoImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 80)
        NSLayoutConstraint.activate([
            self.logoImageViewTopAnchorConstraint,
            self.logoImageView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            self.logoImageView.widthAnchor.constraint(equalToConstant: 182),
            self.logoImageView.heightAnchor.constraint(equalToConstant: 49)
        ])
        
        // idView
        NSLayoutConstraint.activate([
            self.idView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16),
            self.idView.topAnchor.constraint(equalTo: self.logoImageView.bottomAnchor, constant: 39),
            self.idView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16),
            self.idView.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        // idLabel
        self.idLabelTopAnchorConstraint = self.idLabel.topAnchor.constraint(equalTo: self.idView.topAnchor, constant: 13.5)
        NSLayoutConstraint.activate([
            self.idLabel.leadingAnchor.constraint(equalTo: self.idView.leadingAnchor, constant: 15),
            self.idLabelTopAnchorConstraint
        ])
        
        // idTextField
        NSLayoutConstraint.activate([
            self.idTextField.leadingAnchor.constraint(equalTo: self.idView.leadingAnchor),
            self.idTextField.trailingAnchor.constraint(equalTo: self.idView.trailingAnchor),
            self.idTextField.bottomAnchor.constraint(equalTo: self.idView.bottomAnchor, constant: -5),
            self.idTextField.heightAnchor.constraint(equalToConstant: 17)
        ])
        
        // idButton
        NSLayoutConstraint.activate([
            self.idButton.leadingAnchor.constraint(equalTo: self.idView.leadingAnchor),
            self.idButton.trailingAnchor.constraint(equalTo: self.idView.trailingAnchor),
            self.idButton.bottomAnchor.constraint(equalTo: self.idView.bottomAnchor),
            self.idButton.topAnchor.constraint(equalTo: self.idView.topAnchor),
        ])
        
        // passwordView
        NSLayoutConstraint.activate([
            self.passwordView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16),
            self.passwordView.topAnchor.constraint(equalTo: self.idButton.bottomAnchor, constant: 12),
            self.passwordView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16),
            self.passwordView.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        // passwordLabel
        self.passwordLabelTopAnchorConstraint = self.passwordLabel.topAnchor.constraint(equalTo: self.passwordView.topAnchor, constant: 13.5)
        NSLayoutConstraint.activate([
            self.passwordLabel.leadingAnchor.constraint(equalTo: self.passwordView.leadingAnchor, constant: 15),
            self.passwordLabelTopAnchorConstraint
        ])
        
        // textFieldMaskButton
        NSLayoutConstraint.activate([
            self.textFieldMaskButton.trailingAnchor.constraint(equalTo: self.passwordView.trailingAnchor, constant: -10),
            self.textFieldMaskButton.centerYAnchor.constraint(equalTo: self.passwordView.centerYAnchor),
            self.textFieldMaskButton.widthAnchor.constraint(equalToConstant: 24),
            self.textFieldMaskButton.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        // passwordTextField
        NSLayoutConstraint.activate([
            self.passwordTextField.leadingAnchor.constraint(equalTo: self.passwordView.leadingAnchor),
            self.passwordTextField.trailingAnchor.constraint(equalTo: self.passwordView.trailingAnchor),
            self.passwordTextField.bottomAnchor.constraint(equalTo: self.passwordView.bottomAnchor, constant: -5),
            self.passwordTextField.heightAnchor.constraint(equalToConstant: 17)
        ])
        
        // passwordButton
        NSLayoutConstraint.activate([
            self.passwordButton.leadingAnchor.constraint(equalTo: self.passwordView.leadingAnchor),
            self.passwordButton.trailingAnchor.constraint(equalTo: self.passwordView.trailingAnchor),
            self.passwordButton.bottomAnchor.constraint(equalTo: self.passwordView.bottomAnchor),
            self.passwordButton.topAnchor.constraint(equalTo: self.passwordView.topAnchor),
        ])
        
        // findPasswordLabel
        NSLayoutConstraint.activate([
            self.findPasswordButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16),
            self.findPasswordButton.topAnchor.constraint(equalTo: self.passwordButton.bottomAnchor, constant: 19),
            self.findPasswordButton.widthAnchor.constraint(equalToConstant: 106),
            self.findPasswordButton.heightAnchor.constraint(equalToConstant: 14)
        ])
        
        // loginButton
        NSLayoutConstraint.activate([
            self.loginButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16),
            self.loginButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16),
            self.loginButton.topAnchor.constraint(equalTo: self.findPasswordButton.bottomAnchor, constant: 30),
            self.loginButton.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        // facebookLoginButton
        NSLayoutConstraint.activate([
            self.facebookLoginButton.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            self.facebookLoginButton.topAnchor.constraint(equalTo: self.loginButton.bottomAnchor, constant: 37),
            self.facebookLoginButton.widthAnchor.constraint(equalToConstant: 169),
            self.facebookLoginButton.heightAnchor.constraint(equalToConstant: 18)
        ])
        
        // borderImageView
        NSLayoutConstraint.activate([
            self.borderImageView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 16),
            self.borderImageView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -16),
            self.borderImageView.heightAnchor.constraint(equalToConstant: 14)
        ])
        
        // signUpLabel
        NSLayoutConstraint.activate([
            self.signUpLabel.topAnchor.constraint(equalTo: self.borderImageView.bottomAnchor, constant: 41.5),
            self.signUpLabel.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            self.signUpLabel.heightAnchor.constraint(equalToConstant: 17)
        ])
        
        // signUpButton
        NSLayoutConstraint.activate([
            self.signUpButton.leadingAnchor.constraint(equalTo: self.signUpLabel.leadingAnchor),
            self.signUpButton.trailingAnchor.constraint(equalTo: self.signUpLabel.trailingAnchor),
            self.signUpButton.topAnchor.constraint(equalTo: self.signUpLabel.topAnchor),
            self.signUpButton.bottomAnchor.constraint(equalTo: self.signUpLabel.bottomAnchor),
        ])
        
        // borderView
        NSLayoutConstraint.activate([
            self.borderView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            self.borderView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            self.borderView.topAnchor.constraint(equalTo: self.signUpButton.bottomAnchor, constant: 101),
            self.borderView.heightAnchor.constraint(equalToConstant: 0.5)
        ])
        
        // companyLabel
        NSLayoutConstraint.activate([
            self.companyLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -32.5),
            self.companyLabel.topAnchor.constraint(equalTo: self.borderView.bottomAnchor, constant: 32.5),
            self.companyLabel.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor),
            self.companyLabel.heightAnchor.constraint(equalToConstant: 14)
        ])
    }
    
    func setViewAfterTransition() {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        //self.tabBarController?.tabBar.isHidden = false
    }
    
    func setUpNavigationItem() {
        self.view.backgroundColor = .white
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = .clear // Navigation bar is transparent and root view appears on it.
        appearance.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor:UIColor.useRGB(red: 66, green: 66, blue: 66),
            .font:UIFont.useFont(ofSize: 18, weight: .Bold)
        ]
        
        // MARK: NavigationItem appearance for each view controller
        self.navigationItem.scrollEdgeAppearance = appearance
        self.navigationItem.standardAppearance = appearance
        self.navigationItem.compactAppearance = appearance
        
        self.navigationItem.title = ""
        
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "backButton")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(leftBarButtonItem(_:)))
        
    }
}

// MARK: - Extension for methods added
extension LoginViewController {
    
}

// MARK: - Extension for selector methods
extension LoginViewController {
    @objc func leftBarButtonItem(_ barButtonItem: UIBarButtonItem) {
        
    }
    
    @objc func loginButton(_ sender: UIButton) {
        let vc = TabBarController()
        
        self.present(vc, animated: true)
    }
    
    @objc func facebookLoginButton(_ sender: UIButton) {
        let vc = TabBarController()
        
        self.present(vc, animated: true)
    }
    
    @objc func signUpButton(_ sender: UIButton) {
        
    }
    
    @objc func idButton(_ sender: UIButton) {
        self.idTextField.becomeFirstResponder()
        
    }
    
    @objc func passwordButton(_ sender: UIButton) {
        self.passwordTextField.becomeFirstResponder()
        
    }
    
    @objc func textFieldMaskButton(_ sender: UIButton) {
        self.passwordTextField.isSecureTextEntry.toggle()
        
        if self.passwordTextField.isSecureTextEntry {
            self.textFieldMaskButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            
        } else {
            self.textFieldMaskButton.setImage(UIImage(systemName: "eye"), for: .normal)
            
        }
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        if let _ = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue,
            let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double {
            
            self.logoImageViewTopAnchorConstraint.constant = 0
            UIView.animate(withDuration: duration) {
                self.view.layoutIfNeeded()
                
            } completion: { finished in
                
            }
        }
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        if let duration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double {
            
            self.logoImageViewTopAnchorConstraint.constant = 80
            UIView.animate(withDuration: duration) {
                self.view.layoutIfNeeded()
                
            } completion: { finished in
                
            }
        }
    }
}

// MARK: - Extension for UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == self.idTextField {
            UIView.transition(with: self.view, duration: 0.1) {
                self.idView.layer.borderColor = UIColor.useRGB(red: 0, green: 0, blue: 0).cgColor
                
                self.idLabel.font = .useFont(ofSize: 12, weight: .Regular)
                self.idLabel.textColor = .useRGB(red: 0, green: 0, blue: 0)
                
                self.idLabelTopAnchorConstraint.constant = 5
                
                self.view.layoutIfNeeded()
                
            }
            
        } else {
            UIView.transition(with: self.view, duration: 0.1) {
                self.textFieldMaskButton.isHidden = false
                
                self.passwordView.layer.borderColor = UIColor.useRGB(red: 0, green: 0, blue: 0).cgColor
                
                self.passwordLabel.font = .useFont(ofSize: 12, weight: .Regular)
                self.passwordLabel.textColor = .useRGB(red: 0, green: 0, blue: 0)
                
                self.passwordLabelTopAnchorConstraint.constant = 5
                
                self.view.layoutIfNeeded()
                
            }
            
        }
        
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField == self.idTextField {
            if textField.text == "" {
                UIView.transition(with: self.view, duration: 0.1) {
                    self.idView.layer.borderColor = UIColor.useRGB(red: 224, green: 224, blue: 224).cgColor
                    
                    self.idLabel.font = .useFont(ofSize: 14, weight: .Regular)
                    self.idLabel.textColor = .useRGB(red: 0, green: 0, blue: 0, alpha: 0.2)
                    
                    self.idLabelTopAnchorConstraint.constant = 13.5
                    
                    self.view.layoutIfNeeded()
                    
                }
                
            }
            
        } else {
            if textField.text == "" {
                UIView.transition(with: self.view, duration: 0.1) {
                    self.textFieldMaskButton.isHidden = true
                    
                    self.passwordView.layer.borderColor = UIColor.useRGB(red: 224, green: 224, blue: 224).cgColor
                    
                    self.passwordLabel.font = .useFont(ofSize: 14, weight: .Regular)
                    self.passwordLabel.textColor = .useRGB(red: 0, green: 0, blue: 0, alpha: 0.2)
                    
                    self.passwordLabelTopAnchorConstraint.constant = 13.5
                    
                    self.view.layoutIfNeeded()
                    
                }
                
            }
            
        }
        
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if self.idTextField.text != "" && self.passwordTextField.text != "" {
            self.loginButton.isEnabled = true
            
        } else {
            self.loginButton.isEnabled = false
            
        }
    }
}
