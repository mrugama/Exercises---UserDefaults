//
//  HoriOScopeViewController.swift
//  Exercises - UserDefaults
//
//  Created by C4Q on 12/11/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class HoriOScopeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let name = UserDefaultsHelper.manager.getName() ?? "No name yet"
        let sign = UserDefaultsHelper.manager.getSign() ?? "No sign yet"
        nameLabel.text = "Welcome: \(name)"
        textView.text = "The forecast for \(sign)"
    }
}
