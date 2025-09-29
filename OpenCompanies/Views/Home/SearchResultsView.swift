//
//  SearchResultsView.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 28/09/2025.
//

import SwiftUI

struct SearchResultsView: View {
    @ObservedObject var viewModel: CompanyViewModel

    var body: some View {
        Group {
            if viewModel.isLoading {
                LoadingView(message: "Searching...")
            } else if viewModel.companyIds.isEmpty {
                VStack(spacing: 8) {
                    Image(systemName: "doc.text.magnifyingglass")
                        .font(.system(size: 40))
                        .foregroundColor(.gray)
                    Text("No results found")
                        .foregroundColor(.gray)
                        .font(.callout)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            } else {
                List(viewModel.companyIds) { companyId in
                    NavigationLink(destination: CompanyDetailsView(companyId: companyId.id ?? "0")) {
                        SearchResultRow(companyId: companyId)
                    }
                }
            }
        }
    }
}
