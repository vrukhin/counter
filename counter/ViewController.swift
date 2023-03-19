//
//  ViewController.swift
//  counter
//
//  Created by Павел Врухин on 12.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterAddButton: UIButton!
    @IBOutlet weak var counterSubtractButton: UIButton!
    @IBOutlet weak var counterValueLabel: UILabel!
    @IBOutlet weak var counterResetButton: UIButton!
    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var applicationNameLabel: UILabel!
    var counterValue: Int = 0

    let applicationName = "Счетчик"

    func getCurrentDatetime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd hh:mm:ss"
        return dateFormatter.string(from: Date.init())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applicationNameLabel.text = applicationName
        counterValueLabel.text = String(counterValue)
        historyTextView.text = ""
        historyTextView.isEditable = false
    }

    @IBAction func counterAddButtonDidTap(_ sender: Any) {
        counterValue += 1
        counterValueLabel.text = String(counterValue)
        let datetime = getCurrentDatetime()
        historyTextView.text += "\(datetime)\nзначение изменено на +1\n"
    }
    
    @IBAction func counterSubtractButtonDidTap(_ sender: Any) {
        let datetime = getCurrentDatetime()
        if counterValue > 0 {
            counterValue -= 1
            historyTextView.text += "\(datetime)\nзначение изменено на -1\n"
        } else {
            counterValue = 0
            historyTextView.text += "\(datetime)\nпопытка уменьшить значение счетчика ниже нуля\n"
        }
        counterValueLabel.text = String(counterValue)
        
        
    }
    
    @IBAction func counterResetButtonDidTap(_ sender: Any) {
        counterValue = 0
        counterValueLabel.text = String(counterValue)
        let datetime = getCurrentDatetime()
        historyTextView.text += "\(datetime)\nзначение сброшено\n"
    }
}

