//
//  StockData.swift
//  Upstox
//
//  Created by kandavel on 20/05/23.
//
import Foundation

// MARK: - StockData
struct StockData: Codable {
    var clientID: String?
    var data: [Datum]?
    var responseType: String?
    var timestamp: Int?

    enum CodingKeys: String, CodingKey {
        case clientID = "client_id"
        case data
        case responseType = "response_type"
        case timestamp
    }
}

// MARK: - Datum
struct Datum: Codable {
    var avgPrice: String?
    var cncUsedQuantity, collateralQty: Int?
    var collateralType: String?
    var collateralUpdateQty: Int?
    var companyName: String?
    var haircut: Double?
    var holdingsUpdateQty: Int?
    var isin, product: String?
    var quantity: Int?
    var symbol: String?
    var t1HoldingQty: Int?
    var tokenBse, tokenNse: String?
    var withheldCollateralQty, withheldHoldingQty: Int?
    var ltp, close: Double?

    enum CodingKeys: String, CodingKey {
        case avgPrice = "avg_price"
        case cncUsedQuantity = "cnc_used_quantity"
        case collateralQty = "collateral_qty"
        case collateralType = "collateral_type"
        case collateralUpdateQty = "collateral_update_qty"
        case companyName = "company_name"
        case haircut
        case holdingsUpdateQty = "holdings_update_qty"
        case isin, product, quantity, symbol
        case t1HoldingQty = "t1_holding_qty"
        case tokenBse = "token_bse"
        case tokenNse = "token_nse"
        case withheldCollateralQty = "withheld_collateral_qty"
        case withheldHoldingQty = "withheld_holding_qty"
        case ltp, close
    }
}
