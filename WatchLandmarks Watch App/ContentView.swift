//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Vu Hong Duong on 2023/10/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
