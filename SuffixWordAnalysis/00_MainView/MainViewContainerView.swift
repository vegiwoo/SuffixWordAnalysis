//
//  MainViewContainerView.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 18.04.2021.
//

import SwiftUI

struct MainViewContainerView: View {
    
    @EnvironmentObject var appStore: AppStore<AppState, AppAction, AppEnvironment>
    
    var body: some View {
        NavigationStackView {
            MainViewRenderView(selection: selection, segmentes: segmentes)
        }
    }
}

extension MainViewContainerView {
    private var selection: Binding<Int> {
        return appStore.binding(for: \.navigation.segmentControlIndex) {
            AppAction.navigation(action: NavigationAction.setSegmentControlIndex($0))
        }
    }
    
    private var segmentes: Binding<[String]> {
        appStore.binding(for: \.navigation.segmentes)
    }
}

struct MainViewContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewContainerView()
    }
}
