//
//  CoinModel.swift
//  +Crypto
//
//  Created by Emre Ülkem on 28.03.2023.
//

import Foundation

// CoinGecko API info
/*
 
 API: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h

 JSON: [
 {
   "id": "bitcoin",
   "symbol": "btc",
   "name": "Bitcoin",
   "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
   "current_price": 27495,
   "market_cap": 528301474502,
   "market_cap_rank": 1,
   "fully_diluted_valuation": 573918987990,
   "total_volume": 17616566320,
   "high_24h": 27476,
   "low_24h": 26705,
   "price_change_24h": 473.41,
   "price_change_percentage_24h": 1.75195,
   "market_cap_change_24h": 5046845383,
   "market_cap_change_percentage_24h": 0.96451,
   "circulating_supply": 19330831,
   "total_supply": 21000000,
   "max_supply": 21000000,
   "ath": 69045,
   "ath_change_percentage": -60.49521,
   "ath_date": "2021-11-10T14:24:11.849Z",
   "atl": 67.81,
   "atl_change_percentage": 40124.73908,
   "atl_date": "2013-07-06T00:00:00.000Z",
   "roi": null,
   "last_updated": "2023-03-28T19:57:41.432Z",
   "sparkline_in_7d": {
     "price": [
       28248.039696797292,
       28301.63545730713,
     ]
   },
   "price_change_percentage_24h_in_currency": 1.7519487214296747
 }
 
 */

struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low34H: Double?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulationSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String
    let atl, atlChangePercentage: Double?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
}

struct SparklineIn7D: Codable {
    let price: [Double?]
}

