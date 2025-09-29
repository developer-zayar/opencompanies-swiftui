//
//  CompanyUseCase.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 25/09/2025.
//

import Foundation

protocol CompanyUseCaseDelegate: AnyObject {
    func searchCompanies(nameQuery: String) async throws -> [CompanyId]
    func fetchCompanyDetails(id: String) async throws -> [Company]
}

class CompanyUseCase: CompanyUseCaseDelegate {
    private let repository: CompanyRepositoryDelegate

    init(repository: CompanyRepositoryDelegate = CompanyRepository()) {
        self.repository = repository
    }

    func searchCompanies(nameQuery: String) async throws -> [CompanyId] {
        let response = try await repository.searchCompanies(nameQuery: nameQuery)
        return response.data ?? []
    }

    func fetchCompanyDetails(id: String) async throws -> [Company] {
        let response = try await repository.fetchCompanyDetails(id: id)
        return response.data ?? []
    }
}
