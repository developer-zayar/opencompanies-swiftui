//
//  CompanyRepository.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 25/09/2025.
//

import Foundation

protocol CompanyRepositoryDelegate: AnyObject {
    func searchCompanies(nameQuery: String) async throws -> ApiResponse<[CompanyId]>
    func fetchCompanyDetails(id: String) async throws -> ApiResponse<[Company]>
}

class CompanyRepository: CompanyRepositoryDelegate {
    private let networkClient: NetworkClient

    init(networkClient: NetworkClient = NetworkClient(token: AppConfig.apiKey)) {
        self.networkClient = networkClient
    }

    func searchCompanies(nameQuery: String) async throws -> ApiResponse<[CompanyId]> {
        let urlString = "\(AppConfig.baseUrl)/IT-search?companyName=\(nameQuery)"
        let response = try await networkClient.getRequest(urlString, type: ApiResponse<[CompanyId]>.self)
        return response
    }

    func fetchCompanyDetails(id: String) async throws -> ApiResponse<[Company]> {
        let urlString = "\(AppConfig.baseUrl)/IT-start/\(id)"
        let response = try await networkClient.getRequest(urlString, type: ApiResponse<[Company]>.self)
        return response
    }
}
