//
//  CompanyHeaderView.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 27/09/2025.
//

import SwiftUI

struct CompanyHeaderView: View {
    let company: Company

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "building.2.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                VStack(alignment: .leading) {
                    Text(company.companyName ?? "Unknown")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(company.activityStatus ?? "Status N/A")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}
