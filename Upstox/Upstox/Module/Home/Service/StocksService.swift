//
//  StocksService.swift
//  Upstox
//
//  Created by kandavel on 20/05/23.
//

import Foundation

enum StocksService  {
    case currentStockList
    case detail
}

extension StocksService : APIRouter {
    var request: URLRequest? {
        switch self {
        case .currentStockList :
           return request(forEndpoint: "/6d0ad460-f600-47a7-b973-4a779ebbaeaf")
        case .detail :
            return request(forEndpoint: "")
        }
    }
    
    var httpMethod: HTTPMethod {
        .get
    }
    var queryItems: [URLQueryItem]? {
        switch self {
        case .currentStockList:
           return nil
        case .detail:
           return nil
        }
    }
}
