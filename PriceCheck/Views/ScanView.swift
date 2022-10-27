//
//  ScanView.swift
//  PriceCheck
//
//  Created by Katie Lin on 9/29/22.
//

import SwiftUI

struct ScanView: View {
  var scan: PriceScan
    var body: some View {
      HStack {
        Text(scan.item)
          .frame(alignment: .leading)
        Spacer()
        Text(Helper.asCurrency(scan.price))
          .fontWeight(.bold)
      }
    }
}
