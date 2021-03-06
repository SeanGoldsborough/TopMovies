//
//  MoviesViewController.swift
//  TopMovies
//
//  Created by Sean Goldsborough on 12/27/18.
//  Copyright © 2018 Sean Goldsborough. All rights reserved.
//

import Foundation
import UIKit

class MoviesViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.collectionView.dataSource = self
//        self.collectionView.delegate = self
    }
    
//    func createMovie(title: String = "TEST") -> Movie {
//        return Movie(title: title)
//    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return movies.count     
    }
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(
            withReuseIdentifier: "Movie",
            for: indexPath)
    }
    
    
    
    
    
}
