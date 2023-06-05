//
//  MyCurrentHoldingViewController.swift
//  Upstox
//
//  Created by kandavel on 20/05/23.
//

import Foundation
import UIKit

protocol MyCurrentHoldingViewProtocol : AnyObject {
    func showLoadlable()
    func hideLoadable()
    func reloadData()
    
}

class MyCurrentHoldingViewController : BaseViewController {
    
    
    // MARK: -IbOutlet
    @IBOutlet weak var collectionView : UICollectionView!
    @IBOutlet weak var bottomView : UIView!
    private var presenter : StockPresentorProtocol!
    var collectionViewData
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
}

extension MyCurrentHoldingViewController : UICollectionViewDataSource,UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
    }
    
}
