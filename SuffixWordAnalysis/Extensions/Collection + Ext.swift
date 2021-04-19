//
//  Collection + Ext.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 19.04.2021.
//

import Foundation

extension Collection {
    func distance(to index: Index) -> Int { distance(from: startIndex, to: index) }
}
