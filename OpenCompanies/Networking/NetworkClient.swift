//
//  NetworkClient.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 21/09/2025.
//

import Foundation

class NetworkClient {
    private let token: String

    init(token: String) {
        self.token = token
    }

    func getRequest<T: Decodable>(_ url: String, type: T.Type) async throws -> T {
        guard let requestURL = URL(string: url) else {
            throw URLError(.badURL)
        }

        var request = URLRequest(url: requestURL)
        request.httpMethod = "GET"
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Accept")

        let (data, response) = try await URLSession.shared.data(for: request)

        // Optional: validate HTTP status
        if let httpResponse = response as? HTTPURLResponse,
           !(200 ... 299).contains(httpResponse.statusCode)
        {
            throw URLError(.badServerResponse)
        }

        return try JSONDecoder().decode(T.self, from: data)
    }
}
