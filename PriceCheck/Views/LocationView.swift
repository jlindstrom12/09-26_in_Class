//
//  LocationView.swift
//  PriceCheck
//
//  Created by Jonathan Lindstrom on 9/26/24.
//

// Created for PriceCheck on 10/10/20
// Using Swift 5.0
// Running on macOS 11.0
// Qapla'


import SwiftUI

struct LocationView: View {
    
  var body: some View {
    
    let locationScans = Bundle.main.decode([Location].self, from: "scan_api_data.json").sorted(by: { $0 < $1 })
  
    NavigationView {
      List {
        ForEach(locationScans) { location in
          Section(header: Text(location.name), content: {
              ScanView(location: location)
          })
        }
      }.navigationBarTitle("Scans")
    }
  }
}


