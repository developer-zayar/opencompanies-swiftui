//
//  CompanyViewModel.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 27/09/2025.
//

import Foundation

@MainActor
class CompanyViewModel: ObservableObject {
    @Published var searchQuery: String = ""
    @Published var companyIds: [CompanyId] = []
    @Published var companyDetails: Company? = nil

    @Published var isLoading: Bool = false
    @Published var errorMessage: String = ""

    private let useCase: CompanyUseCaseDelegate

    init(useCase: CompanyUseCaseDelegate = CompanyUseCase()) {
        self.useCase = useCase
    }

    func getCompanyIds() async {
        isLoading = true
        do {
            let result = try await useCase.searchCompanies(nameQuery: searchQuery)
            companyIds = result
            print("Company search results: \(result.count)")
        } catch {
            errorMessage = "Error searching companyIds: \(error.localizedDescription)"
        }
        isLoading = false
    }

    func getCompanyDetails(id: String) async {
        isLoading = true
        do {
            let result = try await useCase.fetchCompanyDetails(id: id)
            companyDetails = result.first
            print("Company details: \(result.first?.companyName ?? "Company name is empty.")")
        } catch {
            errorMessage = "Error fetching company details: \(error.localizedDescription)"
        }
        isLoading = false
    }
}
