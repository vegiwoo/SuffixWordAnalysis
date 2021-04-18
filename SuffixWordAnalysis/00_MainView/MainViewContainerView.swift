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
            MainViewRenderView()
        }.onAppear {
            print(appStore)
        }
    }
}

struct MainViewContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewContainerView()
    }
}
