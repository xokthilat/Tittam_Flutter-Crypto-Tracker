import ActivityKit
import Foundation
struct CryptoAttributes: ActivityAttributes {
    public typealias coin = ContentState
    public struct ContentState: Codable, Hashable {
        var name: String
        var change: String
        var price: String
        var isPositivePrice: Bool
        init(from coinData: CoinData) {
            self.name = coinData.name
            self.change = coinData.change
            self.price = coinData.price
            self.isPositivePrice = coinData.isPositivePrice
        }
        
    }
}
struct CoinData: Codable {
    let price: String
    let change: String
    let name: String
    let isPositivePrice: Bool
}
