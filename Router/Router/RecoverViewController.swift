//
//  RecoverViewController.swift
//  Router
//
//  Created by Григоренко Александр Игоревич on 29.12.2022.
//

import UIKit

/// Экран восстановления пароля.
final class RecoverViewController: UIViewController {

    // MARK: - Init

    override func viewDidLoad() {
        super.viewDidLoad()
        dismissScreen()
    }

    // MARK: - Private method

    private func dismissScreen() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            guard let self else { return }
            self.dismiss(animated: true)
        }
    }
}
