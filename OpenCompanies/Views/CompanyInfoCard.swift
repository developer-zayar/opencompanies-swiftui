struct CompanyInfoCard: View {
    let company: Company

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Basic Information")
                .font(.headline)
                .padding(.bottom, 4)
            InfoRow(label: "Tax Code", value: company.taxCode)
            InfoRow(label: "VAT Code", value: company.vatCode)
            InfoRow(label: "Registration Date", value: company.registrationDate)
            InfoRow(label: "SDI Code", value: company.sdiCode)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}
