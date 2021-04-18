//
//  WidgetContent.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 18.04.2021.
//

import Foundation
import WidgetKit

struct SuffixWordAnalysisWidgetData: TimelineEntry {
    public let placeHolder: String
    public var suffixAnalysisText: String
    public let date: Date
}

extension SuffixWordAnalysisWidgetData {
    static let previewData = SuffixWordAnalysisWidgetData(placeHolder: "Enter some text for analysis",
                                                          suffixAnalysisText: "",
                                                          date: Date())
}
