//
//  AppEnvironment.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 18.04.2021.
//

import Foundation

final class AppEnvironment: Singletonable {
    
    @Resolvable
    var suffixProvider: SuffixProvider
    @Resolvable
    var coreDataProvider: CoreDataProvider
    
    init(container: IContainer, args: ()) {}
}

