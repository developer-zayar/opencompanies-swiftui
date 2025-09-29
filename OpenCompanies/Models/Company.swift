//
//  Datum.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 25/09/2025.
//

struct Company: Codable, Identifiable {
    let id: String?
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
}

let dummyCompany = Company(
    id: "60d1bfc731177b0a092cdfc1",
    taxCode: "12485671007",
    vatCode: "12485671007",
    companyName: "OPENAPI S.P.A.",
    address: Address(
        registeredOffice: RegisteredOffice(
            toponym: "VIALE",
            street: "F TOMMASO MARINETTI",
            streetNumber: "221",
            streetName: "VIALE F TOMMASO MARINETTI 221",
            town: "ROMA",
            hamlet: nil,
            province: "RM",
            zipCode: "00143",
            gps: Gps(coordinates: [12.47843, 41.8071]),
            region: Region(code: "12", description: "LAZIO"),
            townCode: "H501"
        )
    ),
    activityStatus: "ATTIVA",
    registrationDate: "2013-07-19",
    sdiCode: "USAL8PV",
    sdiCodeTimestamp: 1709049141,
    creationTimestamp: 1624358855,
    lastUpdateTimestamp: 1708705000,
)
