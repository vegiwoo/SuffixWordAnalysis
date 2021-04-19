//
//  SuffixProvider.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 19.04.2021.
//

import Foundation

class SuffixProvider: Singletonable {
    required init(container: IContainer, args: Void) { }
    
    func getSuffixArray(from word: String, maxSuffixLength: Int) -> [(element: SuffixSequence.Element, suffixIndex: Int)]{
        let suffixSequence = SuffixSequence(word: word)
        var results: [(element: SuffixSequence.Element, suffixIndex: Int)] = .init()

        for element in suffixSequence {
            let suffixIndex = word.distance(to: element)
            let suSubSequence = word.suffix(from: element)
            if suSubSequence.count >= maxSuffixLength {
                results.append((element,suffixIndex))
            }
            if word.endIndex == element {break}
        }
        return results
    }
}
