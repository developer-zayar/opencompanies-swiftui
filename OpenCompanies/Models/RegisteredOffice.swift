struct RegisteredOffice: Codable {
    let toponym, street, streetNumber, streetName: String?
    let town: String?
    let hamlet: JSONNull?
    let province, zipCode: String?
    let gps: Gps?
    let region: Region?
    let townCode: String?
}