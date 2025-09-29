//
//  CompanyDetailsView.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 26/09/2025.
//

import SwiftUI

struct CompanyDetailsView: View {
    let companyId: String
    @State var companyDetails: Company? = nil
    @StateObject var viewModel = CompanyViewModel()

    var body: some View {
        NavigationView {
            VStack {
                Group {
                    if viewModel.isLoading {
                        LoadingView(message: "Loading details...")
                    } else if let company = companyDetails {
                        ScrollView {
                            VStack(spacing: 20) {
                                CompanyHeaderView(company: company)
                                CompanyInfoCard(company: company)
                                CompanyAddressCard(company: company)
                                CompanyGPSCard(company: company)
                            }
                            .padding()
                        }
                    } else {
                        EmptyView(message: "Company details not found.")
                    }
                }
            }
            .navigationTitle("Company Details")
            .navigationBarTitleDisplayMode(.inline)
            .task {
                await viewModel.getCompanyDetails(id: companyId)
                if let details = viewModel.companyDetails {
                    self.companyDetails = details
                }
            }
        }
    }
}

struct InfoRow: View {
    let label: String?
    let value: String?

    var body: some View {
        HStack {
            Text(label ?? "--" + ":")
                .fontWeight(.semibold)
            Spacer()
            Text(value ?? "--")
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    CompanyDetailsView(companyId: "60d1bfc731177b0a092cdfc1", companyDetails: dummyCompany)
}
