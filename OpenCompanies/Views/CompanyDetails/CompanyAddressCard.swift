//
//  CompanyAddressCard.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 27/09/2025.
//

import SwiftUI

struct CompanyAddressCard: View {
    let company: Company

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "mappin.and.ellipse")
                    .foregroundColor(.red)
                Text("Registered Office")
                    .font(.headline)
            }

            Divider()

            if let address = company.address?.registeredOffice {
                Text("\(address.toponym ?? "") \(address.street ?? "") \(address.streetNumber ?? "")")

                Text("\(address.zipCode ?? "") \(address.town ?? ""), \(address.province ?? "")")
                    .foregroundColor(.secondary)

                Text("Region: \(address.region?.description ?? "N/A")")
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 1)
    }
}
