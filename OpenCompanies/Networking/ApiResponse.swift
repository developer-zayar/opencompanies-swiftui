//
//  CompanyResponse.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 25/09/2025.
//

struct ApiResponse<T: Decodable>: Decodable {
    let data: T?
    let success: Bool?
    let message: String?
    let error: String?
}
