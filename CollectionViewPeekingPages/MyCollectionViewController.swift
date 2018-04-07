//
//  MyCollectionViewController.swift
//  CollectionViewPeekingPages
//
//  Created by Shai Balassiano on 06/04/2018.
//  Copyright © 2018 Shai Balassiano. All rights reserved.
//

import UIKit

class MyCollectionViewController: HorizontalPeekingPagesCollectionViewController {

    var dataSource = [0, 1, 2, 3, 4, 5, 6] {
        didSet {
            collectionView?.reloadData()
        }
    }

    override func calculateSectionInset() -> CGFloat {
        return 40
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
    }
}
