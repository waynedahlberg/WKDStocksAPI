//
//  File.swift
//  
//
//  Created by Wayne Dahlberg on 10/2/22.
//

import Foundation
import StocksAPI

@main
struct StocksAPIExec {
  //   static func main() async {
  //    let (data, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v7/finance/quote")!)
  //    let quoteResponse = try! JSONDecoder().decode(QuoteResponse.self, from: data)
  //
  //    print(quoteResponse)
  //
  //    let (searchData, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v1/finance/search")!)
  //
  //    let searchResponse = try! JSONDecoder().decode(SearchTickerResponse.self, from: searchData)
  //
  //    print(searchResponse)
  
  //    let (chartData, _) = try! await URLSession.shared.data(from: URL(string: "https://query1.finance.yahoo.com/v8/finance/chart/aapl?range=1d&interval=1m&include&Timestamp=true&indicators=quote")!)
  //
  //    let chartResponse = try! JSONDecoder().decode(ChartResponse.self, from: chartData)
  //
  //    print(chartResponse)
  
  static let stocksAPI = StocksAPI()
  
  static func main() async {
    do {
//      let quotes = try await stocksAPI.fetchQuotes(symbols: "")
//      print(quotes)
      
//      let tickers = try await stocksAPI.searchTicker(query: "tesla")
//      print(tickers)
      
      if let chart = try await stocksAPI.fetchChartData(symbol: "AAPL", range: .oneWeek) {
        print(chart)
      }
      
    } catch {
      print(error.localizedDescription)
    }
  }
}
