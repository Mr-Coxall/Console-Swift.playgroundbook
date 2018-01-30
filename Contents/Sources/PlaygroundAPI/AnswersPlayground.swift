//  AnswersPlayground.swift

import Foundation

private let answersLiveViewClient = AnswersLiveViewClient()

private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    return formatter
}()

/// Shows a string in the current playground page's live view.
public func print(_ string: String) {
    answersLiveViewClient.print(string)
}

/// Shows a number in the current playground page's live view.
public func print(_ number: Int) {
    answersLiveViewClient.print(String(number))
}

/// Shows a decimal in the current playground page's live view.
public func print(_ decimal: Double) {
    answersLiveViewClient.print(String(decimal))
}

/// Shows a date in the current playground page's live view.
public func print(_ date: Date) {
    answersLiveViewClient.print(dateFormatter.string(for: date) ?? "")
}

/// Asks for a string in the current playground page's live view.
//public func readLine(_ placeholder: String? = nil) -> String {
public func readLine() -> String? {
    var placeholder = ""
    return answersLiveViewClient.readLine(forType: .string, placeholder: placeholder ?? "Input")
}

/// Asks for a number in the current playground page's live view.
public func askForNumber(_ placeholder: String? = nil) -> Int {
    return Int(answersLiveViewClient.readLine(forType: .number, placeholder: placeholder ?? "Number")) ?? 0
}

/// Asks for a decimal in the current playground page's live view.
public func askForDecimal(_ placeholder: String? = nil) -> Double {
    return Double(answersLiveViewClient.readLine(forType: .decimal, placeholder: placeholder ?? "Decimal")) ?? 0
}

/// Asks for a date in the current playground page's live view.
public func askForDate(_ placeholder: String? = nil) -> Date {
    let dateString = answersLiveViewClient.readLine(forType: .date, placeholder: placeholder ?? "Date")
    return dateFormatter.date(from:dateString) ?? Date()
}

/// Asks for a choice of string in the current playground page's live view, chosen from the array of options provided.
public func askForChoice(_ placeholder: String? = nil, options: [String]) -> String {
    return answersLiveViewClient.readLine(forType: .choice(options), placeholder: placeholder ?? "Choice")
}
