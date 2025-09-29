//
//  Plist.swift
//  GitHubUsers
//
//  Created by Zay Yar Phyo on 25/09/2025.
//

import Foundation

enum Plist {
    case baseUrl
    case apiKey

    var value: String {
        switch self {
        case .baseUrl:
            return "Base URL"

        case .apiKey:
            return "API Key"
        }
    }
}
