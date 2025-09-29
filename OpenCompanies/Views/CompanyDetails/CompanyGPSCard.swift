//
//  CompanyGPSCard.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 27/09/2025.
//

import SwiftUI

struct CompanyGPSCard: View {
    let company: Company

    var body: some View {
        if let lat = company.address?.registeredOffice?.gps?.coordinates?.last,
           let lon = company.address?.registeredOffice?.gps?.coordinates?.first
        {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(systemName: "location.circle.fill")
                        .foregroundColor(.green)
                    Text("GPS Coordinates")
                        .font(.headline)
                }

                Divider()
                Label("Lat: \(lat), Lon: \(lon)", systemImage: "location.fill")
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(radius: 1)
        }
    }
}
