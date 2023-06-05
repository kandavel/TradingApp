//
//  CurrentHoldingCell.swift
//  Upstox
//
//  Created by kandavel on 21/05/23.
//

import Foundation
import UIKit
class CurrentHoldingCell : UICollectionViewCell {
    
    @IBOutlet weak var symbolLabel : UILabel!
    @IBOutlet weak var quantityLabel : UILabel!
    @IBOutlet weak var ltpLabel : UILabel!
    @IBOutlet weak var plLabel : UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func setupData() {
        
    }
    
}
