//
//  ScanView.swift
//  PriceCheck
//
//  Created by Jonathan Lindstrom on 9/26/24.
//

//ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
//  Text(scan.item)
//}
//})
import SwiftUI

struct ScanView: View {
    var location: Location
    var body: some View {
        ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
            HStack {
                Text(scan.item)
                //ChatGPT to figure out how to limit to 2 decimals
                Text(String(format: "$%.2f", scan.price))
                    .bold()
                    //ChatGPT to figure out how to left align.
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
    }
}
