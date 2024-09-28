// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import Foundation
import SwiftUI

struct PriceScan: Identifiable, Codable, Comparable {
  
    var id = UUID()
    var item: String
    var price: Float
    var date: String
    
    init(item: String, price: Float, date: String) {
        self.item = item
        self.price = price
        self.date = date
    }
    

  static func < (lhs: PriceScan, rhs: PriceScan) -> Bool {
          return lhs.item == rhs.item && lhs.price == rhs.price
  }
  
  // MARK: Example for SwiftUI
  
}

