//
//  StocksInteractor.swift
//  Upstox
//
//  Created by kandavel on 20/05/23.
//

import Foundation

protocol StockInteractorInputProtocol {
    var  outputProtocol : StockInteractorOutputProtocol {get set}
    var networkManager : NetworkManagerProtocol {get set}
    func makeAPICall()
    func getStcokListCount() -> Int
    func getStockInfo(indexpath : IndexPath) -> Datum?
}

protocol StockInteractorOutputProtocol {
    func  fetchCurrentStockList(result : ResultCallback<StockData>)
}

class StockInteractor {
    
    var  outputProtocol : StockInteractorOutputProtocol
    var networkManager : NetworkManagerProtocol
    private (set)var result : [Datum] = []
    
    init(outputProtocol : StockInteractorOutputProtocol,networkManager : NetworkManagerProtocol) {
        self.outputProtocol = outputProtocol
        self.networkManager = networkManager
    }
}
extension StockInteractor : StockInteractorInputProtocol {
    
    func getStcokListCount() -> Int {
        return self.result.count
    }
    
    func getStockInfo(indexpath : IndexPath) -> Datum? {
        return self.result[safe:  indexpath.row]
    }
    
    func makeAPICall() {
        networkManager.request(StocksService.currentStockList, decodeToType: StockData.self) { [weak self](result) in
            self?.outputProtocol.fetchCurrentStockList(result: result)
        }
        
    }
}
