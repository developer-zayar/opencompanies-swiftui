//
//  RegisteredOffice.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 25/09/2025.
//

struct RegisteredOffice: Codable {
    let toponym: String?
    let street: String?
    let streetNumber: String?
    let streetName: String?
    let town: String?
    let hamlet: String?
    let province: String?
    let zipCode: String?
    let gps: Gps?
    let region: Region?
    let townCode: String?
}
