//
//  ContentView.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 21/09/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = CompanyViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                // Search Box
                HStack {
                    Image(systemName: "building.2.fill")
                        .foregroundColor(.gray)
                    TextField("Enter company name", text: $viewModel.searchQuery)
                        .textFieldStyle(PlainTextFieldStyle())
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
                .padding(.horizontal)

                // Search Button
                Button(action: {
                    Task {
                        await viewModel.getCompanyIds()
                    }
                }) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search Company")
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }
                .padding(.horizontal)

                // Results List
                SearchResultsView(viewModel: viewModel)
            }
            .navigationTitle("Company Search")
        }
    }
}

#Preview {
    ContentView()
}
