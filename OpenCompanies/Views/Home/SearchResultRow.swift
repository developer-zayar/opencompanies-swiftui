struct SearchResultRow: View {
    let companyId: CompanyId
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "number.circle.fill")
                .foregroundColor(.blue)
                .font(.title3)
            VStack(alignment: .leading, spacing: 4) {
                Text("Company ID")
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(companyId.id ?? "Unknown")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
        .padding(.vertical, 6)
    }
}
