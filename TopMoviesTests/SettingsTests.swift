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
    
    
    func test_entering_z_in_number_field_shows_error() {
        let vc = settingsViewController()
        let _ = vc.textField(vc.numberTF, shouldChangeCharactersIn: NSRange(location: 0, length: 0),
                    replacementString: "z")
        XCTAssertFalse(vc.errorLabel.isHidden)
    }
    
    
    
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
