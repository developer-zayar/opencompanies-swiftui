//
//  CompanyResponse.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 25/09/2025.
//

struct CompanyResponse: Codable {
    let data: [Company]?
    let success: Bool?
    let message: String?
    let error: String?
}
