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
    
    func test_title_is_Settings()  {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Settings")
        let _ = vc.view //MUST INCLUDE OR VIEW DID LOAD DOESNT GET CALLED
        XCTAssertEqual(vc.navigationItem.title, "Settings")
    }
    
}
