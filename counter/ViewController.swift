//
//  ViewController.swift
//  counter
//
//  Created by Павел Врухин on 12.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterAddButton: UIButton!
    @IBOutlet weak var counterValueLabel: UILabel!
    private var counterValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterValueLabel.text = String(counterValue)
    }

    @IBAction func counterAddButtonDidTap(_ sender: Any) {
        counterValue += 1
        counterValueLabel.text = String(counterValue)
    }
}

