//
//  LoadingView.swift
//  OpenCompanies
//
//  Created by Zay Yar Phyo on 27/09/2025.
//

import SwiftUI

struct LoadingView: View {
    let message: String

    var body: some View {
        VStack {
            ProgressView(message)
                .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                .padding()
//            Text("Fetching company data")
//                .font(.callout)
//                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
