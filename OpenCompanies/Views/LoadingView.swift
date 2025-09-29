struct LoadingView: View {
    let message: String

    var body: some View {
        VStack {
            ProgressView(message)
                .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                .padding()
            Text("Fetching company data")
                .font(.callout)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
