//
//  SettingsTests.swift
//  TopMoviesTests
//
//  Created by Sean Goldsborough on 11/26/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import Foundation
import UIKit
import XCTest
@testable import TopMovies


class SettingsTests: XCTestCase {
    
    // CREATE THE VC IN A HELPER FUNCTION TO CLEAN UP DUPLICATED CODE
    func settingsViewController() -> SettingsViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Settings") as! SettingsViewController
        let _ = vc.view //MUST INCLUDE OR VIEW DID LOAD DOESNT GET CALLED
        return vc
    }
    
    func test_title_is_Settings()  {
        let vc = settingsViewController()
        XCTAssertEqual(vc.navigationItem.title, "Settings")
    }
    
    func test_label_is_Number_of_results_to_display() {
        let vc = settingsViewController()
        XCTAssertEqual(vc.label.text, "Number of results to display")
    }
    
    func test_number_placeholder_is_100() {
        let vc = settingsViewController()
         XCTAssertEqual(vc.numberTF.placeholder!, "100")
    }
    
    
//    func test_entering_z_in_number_field_shows_error() {
//        let vc = settingsViewController()
//        let _ = vc.textField(vc.numberTF, shouldChangeCharactersIn: NSRange(location: 0, length: 0),
//                    replacementString: "z")
//        XCTAssertFalse(vc.errorLabel.isHidden)
//    }
    
    func test_error_text_is_Please_enter_a_number_between_2_and_200() {
        let vc = settingsViewController()
        XCTAssertEqual(vc.errorLabel.text!, "ERROR: Please enter a number between 2 and 200.")
    }
    
    func test_error_is_hidden() {
        let vc = settingsViewController()
        XCTAssertTrue(vc.errorLabel.isHidden)
    }
    
    func test_number_textField_delegate_is_SettingsVC() {
        let vc = settingsViewController()
        XCTAssertTrue(vc.numberTF.delegate! === vc)
    }
    
    func test_entering_z_in_number_field_shows_error() {
        let vc = settingsViewController()
        vc.enterText("z")
        XCTAssertFalse(vc.errorLabel.isHidden)
    }
    
    func test_entering_2_in_number_field_is_allowed() {
        let vc = settingsViewController()
        vc.enterText("2")
        XCTAssertTrue(vc.errorLabel.isHidden)
    }
    
    func test_number_does_not_allow_z2() {
        let vc = settingsViewController()
        vc.numberTF.text = "z"
        vc.enterText("2")
        XCTAssertFalse(vc.errorLabel.isHidden)
    }
    
    func test_number_does_not_allow_1() {
        let vc = settingsViewController()
        vc.enterText("1")
        XCTAssertFalse(vc.errorLabel.isHidden)
    }
    
    func test_number_does_not_allow_201() {
        let vc = settingsViewController()
        vc.enterText("201")
        XCTAssertFalse(vc.errorLabel.isHidden)
    }
    
    
    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        guard let _ = Int(string) else {
//            errorLabel.isHidden = false
//            return true
//        }
//
//        errorLabel.isHidden = true
//        return true
//    }
    
    
    
//    struct Movie {
//        let title: String
//        func asDictionary() -> [String:Any] {
//            return ["title": title]
//        }
//    }
//
//    func test_asDictionary() {
//        let movie = Movie(title: "Avengers")
//        let dict = movie.asDictionary()
//        XCTAssertEqual("Avengers", dict["title"] as! String)
//    }

}
