//
//  SettingsTests.swift
//  TopMoviesTests
//
//  Created by Sean Goldsborough on 11/26/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import Foundation
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

}
