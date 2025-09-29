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
                Group {
                    if viewModel.isLoading {
                        ProgressView("Searching...")
                            .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
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
                                HStack(spacing: 12) {
                                    Image(systemName: "number.circle.fill")
                                        .foregroundColor(.blue)
                                        .font(.title3)
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text("Company ID")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                        Text(companyId.id ?? "Unknown")
                                            .font(.body)
                                            .fontWeight(.medium)
                                    }
                                }
                                .padding(.vertical, 6)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Company Search")
        }
    }
}

#Preview {
    ContentView()
}
