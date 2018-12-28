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
    
    func test_collection_view_has_zero_items_when_there_are_no_movies() {
        let vc = moviesViewController()
        let numberOfItems = vc.collectionView(vc.collectionView, numberOfItemsInSection: 0)
        XCTAssertEqual(numberOfItems, 0)
    }
    
    func test_collection_view_has_two_items_when_there_are_two_movies() {
        let vc = moviesViewController()
        let movie = Movie()
        vc.movies = [movie, movie]
        let numberOfItems = vc.collectionView(vc.collectionView, numberOfItemsInSection: 0)
        XCTAssertEqual(numberOfItems, 2)
    }
    
    func test_first_cell_title_is_Jumanji_when_movie_is_Jumanji() {
        let vc = moviesViewController()
        let movie = createMovie(title: "Jumanji: Welcome to the Jungle")
        vc.movies = [movie]
        let cell = vc.collectionView(vc.collectionView,
                                     cellForItemAt: IndexPath(row: 0, section: 0)) as! MovieCell
        XCTAssertEqual(cell.title.text!, movie.title)
    }


    

}

