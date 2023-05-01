//
//  SeguePresentViewController.swift
//  ScreenTransactionExample
//
//  Created by 서휘현 on 2023/05/01.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.presentingViewController?
            .dismiss(animated: true, completion: nil)
    }
    
}
