//
//  SuffixWordAnalysisApp.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 18.04.2021.
//

import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // TODO: Save context
        print("App is terminate")
    }
}

@main
struct SuffixWordAnalysisApp: App {
        
    @Environment(\.scenePhase) var scenePhase
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    let appStore: AppStore<AppState, AppAction, AppEnvironment>

    init() {
        ContainerHolder.container = Container()
        self.appStore = SuffixWordAnalysisApp.createAppStore()
    }
    
    var body: some Scene {
        WindowGroup {
            MainViewContainerView()
                .environmentObject(appStore)
        }
        .onChange(of: scenePhase) { newScenePhase in
            switch newScenePhase {
            case .background:
                print("App is in background")
                // TODO: Save context
                //appStore.environment.coreDataProvider.saveContext()
            case .inactive:
                print("App is inactive")
                // TODO: Save context
                //appStore.environment.coreDataProvider.saveContext()
            case .active:
                print("App is active")
            @unknown default:
                print("App is in ...?")
            }
        }
    }
    
    private static func createAppStore() -> AppStore<AppState, AppAction, AppEnvironment> {
        return AppStore(initialState: .init(navigation: NavigationState(), popularSuffixes: PopularSuffixesState(), allSuffixes: AllSuffixesState()), reducer: appReducer, environment: AppEnvironment(container: ContainerHolder.container, args:()))
        
    }
}
