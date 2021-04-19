//
//  AppState.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 18.04.2021.
//

import Foundation

struct AppState {
    var navigation: NavigationState
    var popularSuffixes: PopularSuffixesState
    var allSuffixes: AllSuffixesState
}

struct NavigationState {
    var segmentControlIndex: Int = 0
    var segmentes: [String] = ["Text analysis", "Popular suffixes", "All suffixes"]
}

struct PopularSuffixesState {
    
}

struct AllSuffixesState {
    
}
