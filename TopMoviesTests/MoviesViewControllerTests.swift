//
//  MoviesViewControllerTests.swift
//  TopMoviesTests
//
//  Created by Sean Goldsborough on 12/27/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import Foundation
import UIKit
import XCTest
@testable import TopMovies

class MoviesViewControllerTests: XCTestCase {

    func moviesViewController() -> MoviesViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(
            withIdentifier: "MoviesViewController")
            as! MoviesViewController
        let _ = vc.view
        return vc
        
    }
    
    func test_title_is_Top_Movies() {
        let vc = moviesViewController()
        XCTAssertEqual(vc.navigationItem.title!, "Top Movies")
    }

    

}

