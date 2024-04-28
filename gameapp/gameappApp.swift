//
//  gameappApp.swift
//  gameapp
//
//  Created by Nec Money on 4/22/24.
//


import SwiftUI
import SwiftData
@main
struct gameappApp : App {
    var body: some Scene {
        WindowGroup {
           ContentView()
        }
        .modelContainer(for: StoreRoom.self)
    }
}
