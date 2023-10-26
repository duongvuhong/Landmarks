//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Vu Hong Duong on 2023/10/27.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Hello, World!")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
