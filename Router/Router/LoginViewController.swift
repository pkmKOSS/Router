//
//  ViewController.swift
//  Router
//
//  Created by Григоренко Александр Игоревич on 29.12.2022.
//

import UIKit

/// Экран авторизации.
final class LoginViewController: UIViewController {

    // MARK: - Private constants

    private enum Constants {
        static let fakePasswordName = "111"
        static let fakeLoginName = "111"
    }

    // MARK: - visual components

    @IBOutlet var loginTextView: UITextField!
    @IBOutlet var passwordTextView: UITextField!
    
    // MARK: - Public Properties
    
    var router: LaunchRouter?
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        router = LaunchRouter(viewController: self)
    }
    
    // MARK: IBAction Methods
    
    @IBAction func loginButtonAction(_ sender: Any) {
        guard
            loginTextView.text == Constants.fakeLoginName,
            passwordTextView.text == Constants.fakePasswordName
        else {
            router?.showToRecover()
            return
        }
        router?.showToWelcome()
    }
    
    @IBAction func registerButtonAction(_ sender: Any) {
        router?.showToRegister()
    }

    @IBAction func recoverButtonAction(_ sender: Any) {
        router?.showToRecover()
    }
}

