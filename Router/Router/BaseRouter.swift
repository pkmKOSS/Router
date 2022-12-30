//
//  BaseRouter.swift
//  Router
//
//  Created by Григоренко Александр Игоревич on 29.12.2022.
//

import UIKit

/// Основной роутер.
class BaseRouter: NSObject {

    // MARK: - Visual Properties

    var controller: UIViewController

    // MARK: - Initializers

    init(controller: UIViewController) {
        self.controller = controller
    }

    // MARK: - Public Methods

    func perform<Controller: UIViewController>(
        segue: String,
        performAction: ((Controller) -> Void)? = nil
    ) {
        let performAction = performAction.map { action in { (controller: UIViewController) in
            guard let controller = controller as? Controller
            else {
                assertionFailure("Ожидался \(Controller.self)")
                return
            }
            action(controller)
        }
        }
        controller.performSegue(withIdentifier: segue, sender: performAction)
    }

    func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?
    ) {
        guard let action = sender as? ((UIViewController) -> Void) else { return }
        action(segue.destination)
    }
}
