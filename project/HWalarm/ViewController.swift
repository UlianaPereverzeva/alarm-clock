//
//  ViewController.swift
//  HWalarm
//
//  Created by ульяна on 23.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var progressView: UIProgressView!
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var datePicker: UIDatePicker!
    @IBOutlet private weak var buttonSetThisTime: UIButton!
    @IBOutlet private weak var labelOfSavedTime: UILabel!
    @IBOutlet private weak var uiSwitch: UISwitch!
    @IBOutlet private weak var buttonClear: UIButton!
    
    
    @IBOutlet weak var existingAlarmStackView: UIStackView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      // Do any additional setup after loading the view.
    }
    
        
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        let roundedNumber = Double(Int(slider.value * 100)) / Double(100)
        textField.text = String(roundedNumber)
        progressView.progress = slider.value
    }
    
    @IBAction func setThisTimeButtonAction(_ sender: UIButton) {
        let dateFormater = DateFormatter()
        dateFormater.locale = Locale(identifier: "ru_RU")
        dateFormater.timeStyle = .short
        let currentTime = dateFormater.string(from: datePicker.date)
        labelOfSavedTime.text = currentTime
    }
    
    
    @IBAction func switchAction(_ sender: UISwitch) {
        if uiSwitch.isOn {
            labelOfSavedTime.textColor = .black
            } else {
                labelOfSavedTime.textColor = .gray
            }
    }
    
    
    @IBAction func clearButtonAction(_ sender: UIButton) {
        existingAlarmStackView.isHidden = true
    }
    
    
    
}

