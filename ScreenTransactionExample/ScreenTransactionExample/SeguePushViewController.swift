//
//  SeguePushViewController.swift
//  ScreenTransactionExample
//
//  Created by 서휘현 on 2023/05/01.
//

import UIKit

class SeguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func tapBackButton(_ sender: Any) {
        self.navigationController?
            .popViewController(animated: true)
    }
}
