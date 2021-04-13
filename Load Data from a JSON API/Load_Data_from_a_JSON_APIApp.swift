//
//  Load_Data_from_a_JSON_APIApp.swift
//  Load Data from a JSON API
//
//  Created by elhajjaji on 12/4/2021.
//

import SwiftUI
import CoreData

@main
struct Load_Data_from_a_JSON_APIApp: App {
    let persistenceController = PersistenceController.shared
    @Environment(\.scenePhase) var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView( article: Post.init(title: Rendered.init(rendered: ""), date: "", content: Rendered.init(rendered: "")))
        }
    }
}
