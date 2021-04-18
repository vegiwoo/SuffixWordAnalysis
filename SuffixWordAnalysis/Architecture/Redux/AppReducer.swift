//
//  Reducer.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 18.04.2021.
//

import Foundation
import Combine

typealias Reducer<State, Action, Environment> = (inout State, Action, Environment) -> AnyPublisher<Action, Never>

func appReducer(state: inout AppState, action: AppAction, environment: AppEnvironment) -> AnyPublisher<AppAction, Never>{
    switch action {
    
    case let .navigation(action):
        return navigationReducer(state: &state.navigation, action: action, environment: environment)
            .map(AppAction.navigation(action:))
            .eraseToAnyPublisher()
    case let .popularSuffixes(action):
        return popularSuffixesReducer(state: &state.popularSuffixes, action: action, environment: environment)
            .map(AppAction.popularSuffixes(action:))
            .eraseToAnyPublisher()
    case let .allSuffixes(action):
        return allSuffixesReducer(state: &state.allSuffixes, action: action, environment: environment)
            .map(AppAction.allSuffixes(action:))
            .eraseToAnyPublisher()
    }
}

func navigationReducer(state: inout NavigationState, action: NavigationAction, environment: AppEnvironment) -> AnyPublisher<NavigationAction, Never> {
    
    switch action {
    
    case let .setSegmentControlIndex(index):
        state.segmentControlIndex = index
        print("ℹ️ Selected segment control index:", state.segmentControlIndex)
    }
    
    return Empty().eraseToAnyPublisher()
}

func allSuffixesReducer(state: inout AllSuffixesState, action: AllSuffixesAction, environment: AppEnvironment) -> AnyPublisher<AllSuffixesAction, Never> {
    
    // switch action
    
    return Empty().eraseToAnyPublisher()
}

func popularSuffixesReducer(state: inout PopularSuffixesState, action: PopularSuffixesAction, environment: AppEnvironment) -> AnyPublisher<PopularSuffixesAction, Never> {
    
    // switch action
    
    return Empty().eraseToAnyPublisher()
}
