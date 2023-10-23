//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Vu Hong Duong on 2023/10/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
