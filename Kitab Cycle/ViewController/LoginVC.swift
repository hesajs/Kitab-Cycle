//
//  LoginVC.swift
//  Kitab Cycle
//
//  Created by SaJesh Shrestha on 9/13/20.
//  Copyright © 2020 SaJesh Shrestha. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    let loginImageView = KCLogoImageView(frame: .zero)
    let emailTextField = KCEmailTextField()
    let passwordTextField = KCPasswordTextField()
    let loginButton = KCButton(backgroundColor: .systemOrange, title: "Login")
    let signupButton = KCButton(backgroundColor: .systemRed, title: "Signup")
    
    let padding: CGFloat = 30
    let heightOfTextField: CGFloat = 55
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        configureLoginLogo()
        configureEmailTextField()
        configurePasswordTextField()
        createDismissKeyboardTapGesture()
        configureLoginButton()
        configureSignupButton()
    }
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func createDismissKeyboardTapGesture() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    @objc func pushSignupVC() {
        let signupVC = SignupVC()
        signupVC.title = "Sign up"
        navigationController?.pushViewController(signupVC, animated: true)
    }
    
    @objc func pushHomeVC() {
//        navigationController?.pushViewController(HomeVC(), animated: true)
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(MainTabBarVC())
    }
    
    func configureLoginLogo() {
        view.addSubview(loginImageView)
                  
        NSLayoutConstraint.activate([
            loginImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            loginImageView.heightAnchor.constraint(equalToConstant: 175),
        ])
    }
    
    func configureEmailTextField() {
        view.addSubview(emailTextField)
        
        NSLayoutConstraint.activate([
            emailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailTextField.topAnchor.constraint(equalTo: loginImageView.bottomAnchor, constant: padding),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            emailTextField.heightAnchor.constraint(equalToConstant: heightOfTextField),
        ])
    }
    
    func configurePasswordTextField() {
        view.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            passwordTextField.heightAnchor.constraint(equalToConstant: heightOfTextField),
        ])
    }
    
    func configureLoginButton() {
        view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(pushHomeVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            loginButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -(padding + 100)),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            loginButton.heightAnchor.constraint(equalToConstant: heightOfTextField),
        ])
    }
    
    func configureSignupButton() {
        view.addSubview(signupButton)
        signupButton.addTarget(self, action: #selector(pushSignupVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            signupButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: padding - 10),
            signupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            signupButton.heightAnchor.constraint(equalToConstant: heightOfTextField),
        ])
    }
    
}

