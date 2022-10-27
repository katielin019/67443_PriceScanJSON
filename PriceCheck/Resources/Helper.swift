// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'


import Foundation
import UIKit

extension Bundle {
  // Borrowed from Paul Hudson (@twostraws)
  func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle.")
    }

    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle.")
    }

    let decoder = JSONDecoder()

    guard let loaded = try? decoder.decode(T.self, from: data) else {
      fatalError("Failed to decode \(file) from bundle.")
    }

    return loaded
  }
}


extension Double {
  func round(to places: Int) -> Double {
    let divisor = pow(10.0, Double(places))
    return (self * divisor).rounded() / divisor
  }
}

class Helper {

  static func getShortDate(_ date: String) -> String {
    // I realize there are shorter ways to do this, but teaching about
    // moving from strings to dates and from dates to strings
    
    // Set up a date formatter object to work with
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss" // ISO8601 format
    dateFormatter.timeZone = TimeZone.current
    dateFormatter.locale = Locale.current
    
    // Convert the string into a date object
    if let dateObject = dateFormatter.date(from: date) {
      // If able to convert, transform the date object into a shorter string
      dateFormatter.timeStyle = .short
      dateFormatter.dateStyle = .short
      return dateFormatter.string(from: dateObject)
    }
    else {
      return "N/A"
    }
  }
  

  static func asCurrency(_ price: Double) -> String {
    let roundedPrice = price.round(to: 2)
    return "$\(roundedPrice)"
  }
}

