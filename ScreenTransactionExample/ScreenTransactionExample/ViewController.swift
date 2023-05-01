//
//  ViewController.swift
//  ScreenTransactionExample
//
//  Created by 서휘현 on 2023/05/01.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else { return }
        viewController.name = "Hwee"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SeguePushViewController{
            viewController.name = "Hwee"
        }
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else { return }
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Hwee"
        viewController.delegate = self
        self.present(viewController,animated: true, completion: nil
        )
    }
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

