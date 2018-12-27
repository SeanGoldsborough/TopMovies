//
//  SettingsViewController.swift
//  TopMovies
//
//  Created by Sean Goldsborough on 11/26/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var numberTF: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let _ = Int(string) else {
            errorLabel.isHidden = false
            return true
        }
        errorLabel.isHidden = true
        return true
    }
    
    
}

extension SettingsViewController {
    func enterText(_ text: String) {
        let _ = textField(numberTF, shouldChangeCharactersIn: NSRange(location: numberTF.text!.count, length: 0), replacementString: "z")
    }
}
