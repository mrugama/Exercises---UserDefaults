//
//  SettingHoriOScopeViewController.swift
//  Exercises - UserDefaults
//
//  Created by C4Q on 12/11/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class SettingHoriOScopeViewController: UIViewController {
    
    let signs = ["Aries", "Leo", "Sagittarius", "Taurus", "Virgo", "Capricorn", "Gemini", "Libra", "Aquarius", "Cancer", "Scorpio", "Pisces"]
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.dataSource = self
        self.pickerView.delegate = self
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let newName = nameTextField.text {
            UserDefaultsHelper.manager.setName(to: newName)
        }
        let newSign = signs[pickerView.selectedRow(inComponent: 0)]
        UserDefaultsHelper.manager.setSign(to: newSign)
    }

}

extension SettingHoriOScopeViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return signs.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return signs[row]
    }
    
}
