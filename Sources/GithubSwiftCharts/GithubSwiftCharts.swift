import SwiftUI

public struct ContributionChartView: View {
    public let contributionData: [String: Int]
    public let daysPerRow: Int
    public let totalDays: Int
    
    public init(contributionData: [String: Int], daysPerRow: Int, totalDays: Int) {
        self.contributionData = contributionData
        self.daysPerRow = daysPerRow
        self.totalDays = totalDays
    }
    
    @available(macOS 10.15, *)
    public var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            ForEach(Array((0..<totalDays / daysPerRow).reversed()), id: \.self) { row in
                HStack(spacing: 2) {
                    ForEach(Array((0..<daysPerRow).reversed()), id: \.self) { dayIndex in
                        let overallIndex = (row * daysPerRow) + dayIndex
                        if overallIndex < totalDays {
                            let date = getDate(forDayIndex: overallIndex)
                            let dateString = date
                            let contributionCount = contributionData[dateString] ?? 0
                            
                            RoundedRectangle(cornerRadius: 4)
                                .fill(contributionCount > 0 ? Color.green : Color.gray)
                                .frame(width: 12, height: 12)
                        }
                    }
                }
            }
        }
        .padding()
    }
    
    private func getFormattedDate(from date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
    
    private func getDate(forDayIndex dayIndex: Int) -> String {
        let calendar = Calendar.current
        let currentDate = Calendar.current.date(bySettingHour: 0, minute: 0, second: 0, of: Date())!
        let dateComponents = calendar.date(byAdding: .day, value: -dayIndex, to: currentDate)!
        return getFormattedDate(from: calendar.startOfDay(for: dateComponents))
    }
}
