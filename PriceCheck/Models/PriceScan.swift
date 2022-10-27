// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import Foundation
import SwiftUI

struct PriceScan: Identifiable, Codable, Comparable {
  
  var id = UUID()  // To conform to Identifiable protocol
  
  // Additional properties, etc.
  let item: String
  let price: Double
  let date: String
  
  enum CodingKeys : String, CodingKey {
    case item
    case price
    case date
  }
  
  
  func onDate() -> String {
    return Helper.getShortDate(self.date)
  }
  
  // To conform to Comparable protocol
  static func < (lhs: PriceScan, rhs: PriceScan) -> Bool {
    return lhs.item < rhs.item
  }
  
  // MARK: Example for SwiftUI
  
}

