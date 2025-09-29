//
//  EmptyStateView.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 27/09/2025.
//

import SwiftUI

struct EmptyView: View {
    let message: String

    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.triangle.fill")
                .font(.largeTitle)
                .foregroundColor(.orange)
                .padding()
            Text(message)
                .foregroundColor(.gray)
                .font(.callout)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
