//
//  SignupVC.swift
//  Kitab Cycle
//
//  Created by SaJesh Shrestha on 9/14/20.
//  Copyright © 2020 SaJesh Shrestha. All rights reserved.
//

import UIKit

class SignupVC: UIViewController {
    
    let nameTextField = KCTextField(textAlignment: .left, placeholder: "Full Name")
    let contanctNo = KCTextField(textAlignment: .left, placeholder: "Contact Number", keyboardType: .numberPad)
    let emailTextField = KCEmailTextField()
    let passwordTextField = KCPasswordTextField()
    let signupButton = KCButton(backgroundColor: .systemRed, title: "Sign Up")
    
    let padding: CGFloat = 20
    let heightOfTextField: CGFloat = 55
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        UINavigationBar.appearance().tintColor = .systemRed
        view.backgroundColor = .systemBackground
        
        configureNameField()
        configureContactField()
        configureEmailField()
        configurePasswordField()
        configureSignupButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
//        edgesForExtendedLayout = []

        //        navigationController?.isNavigationBarHidden = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func configureNameField() {
        view.addSubview(nameTextField)
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: padding + 190),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            nameTextField.heightAnchor.constraint(equalToConstant: heightOfTextField)
        ])
    }
    
    func configureContactField() {
        contanctNo.delegate = self
        view.addSubview(contanctNo)
        
        NSLayoutConstraint.activate([
            contanctNo.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: padding),
            contanctNo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            contanctNo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            contanctNo.heightAnchor.constraint(equalToConstant: heightOfTextField)
        ])
    }
    
    func configureEmailField() {
        view.addSubview(emailTextField)
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: contanctNo.bottomAnchor, constant: padding),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            emailTextField.heightAnchor.constraint(equalToConstant: heightOfTextField)
        ])
    }
    
    func configurePasswordField() {
        passwordTextField.delegate = self
        view.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: padding),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            passwordTextField.heightAnchor.constraint(equalToConstant: heightOfTextField)
        ])
    }
    
    func configureSignupButton() {
        view.addSubview(signupButton)
        
        signupButton.addTarget(self, action: #selector(pushHomeVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            signupButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: padding),
//            signupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
//            signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            signupButton.centerXAnchor.constraint(equalTo: passwordTextField.centerXAnchor),
            signupButton.widthAnchor.constraint(equalToConstant: 150),
            signupButton.heightAnchor.constraint(equalToConstant: heightOfTextField)
        ])
    }
    
    @objc func pushHomeVC() {
        navigationController?.pushViewController(HomeVC(), animated: true)
    }
    
}

extension SignupVC: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //For mobile numer validation
        if textField == contanctNo {
            let allowedCharacters = CharacterSet(charactersIn:"0123456789 ")//Here change this characters based on your requirement
            let characterSet = CharacterSet(charactersIn: string)
            return allowedCharacters.isSuperset(of: characterSet)
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == passwordTextField { pushHomeVC() }
        return false
    }
}
