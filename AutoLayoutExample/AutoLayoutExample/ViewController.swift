//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by 서휘현 on 2023/04/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapChangeColorButton(_ sender: UIButton) {
        self.colorView.backgroundColor = UIColor.blue
        print("색상 변경 버튼 클릭됨")
    }
    
}

