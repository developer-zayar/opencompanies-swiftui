struct CompanyAddressCard: View {
    let company: Company

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Registered Office")
                .font(.headline)
                .padding(.bottom, 4)

            if let address = company.address?.registeredOffice {
                Label {
                    Text("\(address.toponym ?? "") \(address.street ?? "") \(address.streetNumber ?? "")")
                } icon: {
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(.red)
                }

                Text("\(address.zipCode ?? "") \(address.town ?? ""), \(address.province ?? "")")
                    .foregroundColor(.secondary)

                Text("Region: \(address.region?.description ?? "N/A")")
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}
