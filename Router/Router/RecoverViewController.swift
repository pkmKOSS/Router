//
//  RecoverViewController.swift
//  Router
//
//  Created by Григоренко Александр Игоревич on 29.12.2022.
//

import UIKit

class RecoverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            guard let self else { return }
            self.dismiss(animated: true)
        }
    }
}
