//
//  CompanyInfoCard.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 27/09/2025.
//

import SwiftUI

struct CompanyInfoCard: View {
    let company: Company

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "info.circle.fill")
                    .foregroundColor(.blue)
                Text("Company Info")
                    .font(.headline)
            }
            Divider()
            InfoRow(label: "Tax Code", value: company.taxCode)
            InfoRow(label: "VAT Code", value: company.vatCode)
            InfoRow(label: "Registration Date", value: company.registrationDate)
            InfoRow(label: "SDI Code", value: company.sdiCode)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 1)
    }
}
