//
//  MovieCollectionViewCell.swift
//  Movie Browser
//
//  Created by Nachiket Vaidya on 30/10/17.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    //Outlets
    @IBOutlet private weak var logoImageView: UIImageView!
    @IBOutlet private weak var titleView: UIView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    //Properties
    private var cellIndex:IndexPath = IndexPath()
    
    //Setup
    func setUpCell() {
        
    }
}
