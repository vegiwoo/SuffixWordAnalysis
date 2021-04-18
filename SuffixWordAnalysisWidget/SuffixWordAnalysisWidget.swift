//
//  SuffixWordAnalysisWidget.swift
//  SuffixWordAnalysisWidget
//
//  Created by Dmitry Samartcev on 18.04.2021.
//

import WidgetKit
import SwiftUI

struct Provider: IntentTimelineProvider {

    typealias Entry = SuffixWordAnalysisWidgetData
    typealias Intent = SuffixAnalysisTextIntentIntent

    var snapshotEntry = SuffixWordAnalysisWidgetData(placeHolder: "", suffixAnalysisText: "", date: Date())
    
    func placeholder(in context: Context) -> SuffixWordAnalysisWidgetData {
        snapshotEntry
    }

    public func getSnapshot(for configuration: Intent, in context: Context,completion: @escaping (Entry) -> Void) {
        let entry = snapshotEntry
        completion(entry)
    }
    
    func getTimeline(for configuration: Intent, in context: Context, completion: @escaping (Timeline<Entry>) -> Void) {
        var entries: [SuffixWordAnalysisWidgetData] = [snapshotEntry]
        if let text = configuration.text {
            entries[0].suffixAnalysisText = text
        }
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

@main
struct SuffixWordAnalysisWidget: Widget {
    let kind: String = "SuffixWordAnalysisWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: SuffixAnalysisTextIntentIntent.self, provider: Provider()) { entry in
            WordAnalysisView(data: entry)
        }
        .configurationDisplayName("Suffix Word Analysis")
        .description("Enter text for suffix analysis")
    }
}
