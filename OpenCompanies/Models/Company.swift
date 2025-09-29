//
//  Datum.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 27/09/2025.
//

struct Company: Codable, Identifiable {
    let taxCode: String?
    let vatCode: String?
    let companyName: String?
    let address: Address?
    let activityStatus: String?
    let registrationDate: String?
    let sdiCode: String?
    let sdiCodeTimestamp: Int?
    let creationTimestamp: Int?
    let lastUpdateTimestamp: Int?
    let id: String?
}
