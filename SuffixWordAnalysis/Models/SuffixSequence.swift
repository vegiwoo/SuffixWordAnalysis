//
//  SuffixSequence.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 19.04.2021.
//

import Foundation

struct SuffixSequence: Sequence, IteratorProtocol {
    var word: String
    var currentIndex: String.Index
    var endIndex: String.Index
    
    init(word: String) {
        self.word = word
        self.currentIndex = word.startIndex
        self.endIndex = word.endIndex
    }

    mutating func next() -> String.Index? {
        defer {
            if currentIndex != word.endIndex {
                currentIndex = word.index(after: currentIndex)
            }
        }
        return currentIndex
    }
}
