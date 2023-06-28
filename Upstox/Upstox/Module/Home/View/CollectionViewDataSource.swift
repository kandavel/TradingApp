//
//  CollectionViewDataSource.swift
//  Upstox
//
//  Created by kandavel on 30/05/23.
//

import Foundation
import UIKit

protocol ListCollectinoViewDataSourceOutputs: AnyObject {
    func didSelect()
}

final class CollectionViewDataSource: collectionViewItemDataSource {
    
    
    
    private weak var presenter: ListCollectinoViewDataSourceOutputs?
    private weak var stockPresentor : StockPresentorProtocol?

    init() {
        
    }
    
    
    func getNumberOfItems() -> Int {
        
    }
    
    func itemCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        
    }
    
    func didSelect(collectionView: UICollectionView, indexPath: IndexPath) {
        
    }

}
