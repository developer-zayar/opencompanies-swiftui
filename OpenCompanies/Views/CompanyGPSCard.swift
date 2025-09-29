struct CompanyGPSCard: View {
    let company: Company

    var body: some View {
        if let lat = company.address?.registeredOffice?.gps?.coordinates?.last,
           let lon = company.address?.registeredOffice?.gps?.coordinates?.first {
            VStack(alignment: .leading, spacing: 8) {
                Text("GPS Coordinates")
                    .font(.headline)
                Label("Lat: \(lat), Lon: \(lon)", systemImage: "location.fill")
                    .foregroundColor(.blue)
            }
            .padding()
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
        }
    }
}
