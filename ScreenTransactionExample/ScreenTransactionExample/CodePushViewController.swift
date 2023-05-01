//
//  CodePushViewController.swift
//  ScreenTransactionExample
//
//  Created by 서휘현 on 2023/05/01.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
