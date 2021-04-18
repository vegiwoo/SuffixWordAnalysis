//
//  AppAction.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 18.04.2021.
//

import Foundation

enum AppAction {
    case navigation(action: NavigationAction)
    case popularSuffixes(action: PopularSuffixesAction)
    case allSuffixes(action: AllSuffixesAction)
}

enum NavigationAction {
    case setSegmentControlIndex(Int)
}

enum PopularSuffixesAction {
    case stub
}

enum AllSuffixesAction {
    case stub
}
