//
//  AppsSearchController.swift
//  AppStore
//
//  Created by Cristian Leonel Gibert on 06/06/2019.
//  Copyright © 2019 Cristian Gibert. All rights reserved.
//

import UIKit

class AppsSearchController: UICollectionViewController {

    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
    }
}
