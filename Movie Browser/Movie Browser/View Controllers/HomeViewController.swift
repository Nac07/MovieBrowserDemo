//
//  ViewController.swift
//  Movie Browser
//
//  Created by Nachiket Vaidya on 30/10/17.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    //MARK: Outlets and Properties
    
    //Outlets
    @IBOutlet private weak var moviesCollectionView: UICollectionView!
    
    //Properties
    
    //MARK: View Controller Delegates
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: Setup
    func setUpView() {
        
        
    }
    
    //MARK: Collection View Methdods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:MovieCollectionViewCell! = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CellIdentifiers.movieCollectionCell, for: indexPath)
        cell.setUpCell()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellHeight:CGFloat = moviesCollectionView.frame.size.height / 2.0
        let cellWidth:CGFloat = moviesCollectionView.frame.size.width / 2.0
        return CGSize(width: cellWidth, height: cellHeight)
    }

}

