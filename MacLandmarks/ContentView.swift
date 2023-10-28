//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Vu Hong Duong on 2023/10/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
