//
//  CodePresentViewController.swift
//  ScreenTransactionExample
//
//  Created by 서휘현 on 2023/05/01.
//

import UIKit

protocol sendDataDelegate: AnyObject {
    func sendData(name:String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name:String?
    weak var delegate: SendDataDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
        // Do any additional setup after loading the view.
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Hwee")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
