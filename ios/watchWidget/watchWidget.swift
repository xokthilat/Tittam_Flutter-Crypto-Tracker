//
//  watchWidget.swift
//  watchWidget
//
//  Created by mikasaloli on 24/09/2023.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func recommendations() -> [IntentRecommendation<ConfigurationIntent>] {
        return recommendedIntents()
            .map { intent in
                return IntentRecommendation(intent: intent, description: "Tracking")
            }
    }
    
    func placeholder(in context: Context) -> ViewModel {
        let entry = ViewModel(date: Date(),configuration: ConfigurationIntent())
        entry.cryptoName = "BTC"
        return entry
    }
    
    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<ViewModel>) -> Void) {
        let entry = ViewModel(date: Date(),configuration: configuration)
        entry.cryptoName = "BTC"
        let timeline = Timeline(entries: [entry], policy: .atEnd)
        completion(timeline)
    }
    
    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (ViewModel) -> Void) {
        let entry = ViewModel(date: Date(),configuration: configuration)
        entry.cryptoName = "BTC"
        completion(entry)
    }
    
    private func recommendedIntents() -> [ConfigurationIntent] {
        return [ConfigurationIntent()]
    }
}


struct watchWidgetEntryView : View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        Text(viewModel.cryptoName)
        Text(viewModel.cryptoChange).foregroundColor(.green)
    }
}

@main
struct watchWidget: Widget {
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: "watchWidget", intent: ConfigurationIntent.self ,provider: Provider()) { viewModel in
            if #available(watchOS 10.0, *) {
                watchWidgetEntryView(viewModel: viewModel)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                watchWidgetEntryView(viewModel: viewModel)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("Tracking")
        .description("Crypto Tracking.")
    }
}

#Preview(as: .accessoryRectangular) {
    watchWidget()
} timeline: {
    ViewModel(date: Date(),configuration: ConfigurationIntent())
    ViewModel(date: Date(),configuration: ConfigurationIntent())
}
