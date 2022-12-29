//
//  LaunchRouter.swift
//  Router
//
//  Created by Григоренко Александр Игоревич on 29.12.2022.
//

import UIKit

/// Launch router
class LaunchRouter: BaseRouter {
    // MARK: - Initialisers

    init(viewController: UIViewController) {
        super.init(controller: viewController)
    }

    // MARK: - Public Methods

    func showToWelcome() {
        perform(segue: "goWellcome")
    }

    func showToRegister() {
        perform(segue: "goRegister")
    }

    func showToRecover() {
        perform(segue: "goRecover")
    }
}
