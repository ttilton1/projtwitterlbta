//
//  HomeController.swift
//  TwitterLBTA
//
//  Created by Thomas Tilton on 7/29/19.
//  Copyright © 2019 Thomas Tilton. All rights reserved.
//

import Foundation
import UIKit

class WordCell: UICollectionViewCell {
    //this gets called when a cell is dequeued
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .yellow
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        //register cellID to unique collection view cellClass
        //cells defaulted to transparent, and 50x50
        //to put words lets register our own custom cell for UICollectionViewCell
        collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellId)
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        return cell
    }
    //want to change cell dimensions
    //sizeforitem given by UICollectionViewDelegateFlowLayout in the declaration
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
}
