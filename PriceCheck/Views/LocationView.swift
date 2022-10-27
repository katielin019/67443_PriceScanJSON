//
//  LocationView.swift
//  PriceCheck
//
//  Created by Katie Lin on 9/29/22.
//

import SwiftUI

struct LocationView: View {
  var location: Location
    var body: some View {
      Section(header: Text(location.name), content: {
        ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
          ScanView(scan: scan)
        }
      })
    }
}
