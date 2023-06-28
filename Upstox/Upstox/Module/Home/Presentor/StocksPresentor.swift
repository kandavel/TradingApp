//
//  StocksPresentor.swift
//  Upstox
//
//  Created by kandavel on 20/05/23.
//

import Foundation

protocol StockPresentorProtocol : AnyObject {
    func viewDidLoad()
    func getCellCount() -> Int
    func getSymbol(indexpath : IndexPath) -> String?
    func getStockInfo(indexPath : IndexPath) -> StockData?
    func getQuantity(indexPath : IndexPath) -> String?
    func getBottomSheetInfo(indexpath : IndexPath)
    func fetchData()
}



class StockPresentor {
   
    private var interactorOutputprotocol : StockInteractorOutputProtocol?
    weak  var view : MyCurrentHoldingViewProtocol?
    private var interactor : StockInteractorInputProtocol?
    
    
}

extension StockPresentor : StockPresentorProtocol {
   
    
    func fetchData() {
        
    }
    
    func getSelectedIndex(index : IndexPath) {
        
        
    }
    
    func viewDidLoad() {
        
    }
    
    func getCellCount() -> Int {
        self.interactor?.getStcokListCount() ?? 0
    }
    
    func getSymbol(indexpath : IndexPath) -> String? {
        self.interactor?.getStockInfo(indexpath: indexpath)?.symbol
    }
    
    func getQuantity(indexPath : IndexPath) -> String? {
        return "\(self.interactor?.getStockInfo(indexpath: indexPath)?.quantity ?? 0)"
    }
    
    func getStockInfo(indexPath : IndexPath) -> StockData? {
        
    }
    
    func getBottomSheetInfo(indexpath : IndexPath) {
        
    }
    
}
