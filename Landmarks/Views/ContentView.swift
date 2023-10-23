//
//  ContentView.swift
//  Landmarks
//
//  Created by Vu Hong Duong on 2023/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
