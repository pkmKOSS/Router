//
//  LaunchRouter.swift
//  Router
//
//  Created by Григоренко Александр Игоревич on 29.12.2022.
//

import UIKit

/// Роутер экрана логин.
final class LaunchRouter: BaseRouter {

    // MARK: - Private constants

    private enum Constants {
        static let goWellcomeMethodName = "goWellcome"
        static let goRegisterMethodName = "goRegister"
        static let goRecoverMethodName = "goRecover"
    }

    // MARK: - Initialisers

    init(viewController: UIViewController) {
        super.init(controller: viewController)
    }

    // MARK: - Public Methods

    func routToWelcome() {
        perform(segue: "goWellcome")
    }

    func routToRegister() {
        perform(segue: "goRegister")
    }

    func routToRecover() {
        perform(segue: "goRecover")
    }
}
